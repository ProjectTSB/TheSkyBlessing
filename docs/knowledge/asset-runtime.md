# Asset の実行モデル

この文書は本体が提供する Mob、Object、Effect の実行基盤を扱う。Asset 側の個別実装を読む前に、ID 別の定義がどのように構築され、entity ごとの状態と結び付くかを確認する。

## Mob / Object の型と個体

Mob と Object の `register` は型定義に相当する。API は `Argument.ID` を `asset:context id` に移し、macro で `asset:mob/alias/$(id)/register` または `asset:object/alias/$(id)/register` を呼ぶ。register が `storage asset:mob` / `asset:object` に ID、属性、`Field`、継承情報を組み立てる。これは召喚ごとの処理であり、load 時に全型を常駐 registry へ構築する処理ではない。[Mob load](../../TheSkyBlessing/data/asset_manager/functions/mob/load.mcfunction) は SpawnPool を初期化して enroll tag を読む。

生成された entity と、その entity をキーに OhMyDat が持つ `MobField` / `ObjectField` が個体に相当する。entity の `MobID` / `ObjectID` score が動的な型 ID になる。summon API は register の既定 `Field` を `asset:context this` に複製し、API の `Argument.FieldOverride` を merge してから summon と init を呼ぶ。[Mob core summon](../../TheSkyBlessing/data/api/functions/mob/core/summon.mcfunction) と [Object core summon](../../TheSkyBlessing/data/api/functions/object/core/summon.mcfunction) を一組で確認する。

init 後、`this` は対象 entity の OhMyDat `MobField` / `ObjectField` へ保存される。[Mob init](../../TheSkyBlessing/data/asset_manager/functions/mob/summon/init.mcfunction) と [Object init](../../TheSkyBlessing/data/asset_manager/functions/object/summon/init.mcfunction) が最初の保存を行う。

召喚した個体の受け渡しには一時的な `MobInit` / `ObjectInit` tagを使う。例えばObject core summonは召喚直後に実行位置から0.01以内の `ObjectInit` をすべて初期化する。tagは任意の目印ではなく、召喚と共通initの間の受け渡し口である。同じ位置に別用途の未処理Init個体を残したり、独自の召喚処理で後始末を変えたりすると、別個体まで初期化する可能性がある。

したがって `asset:context this` は永続領域ではない。現在処理中の個体の永続 Field を method 実行中だけ展開する作業窓である。

## tick と実行 context

[core tick](../../TheSkyBlessing/data/core/functions/tick/.mcfunction) は Mob と Object をそれぞれ `execute as <entity> at @s` で呼ぶ。asset method 内の `@s` は対象 entity、実行位置はその entity の位置である。

Mob の [trigger entry](../../TheSkyBlessing/data/asset_manager/functions/mob/triggers/.mcfunction) は次の順で処理する。

1. 対象に `this` tag を付け、OhMyDat の pointer を取得する。
2. `MobID` を `context.id` と `originID` に、永続 `MobField` を `context.this` に読み込む。
3. tick、蓄積された attack / hurt / death、remove event を呼ぶ。
4. asset 内で OhMyDat pointer が変わり得るため pointer を取得し直す。
5. entity がまだ有効なら `context.this` を `MobField` に保存する。
6. `context.id` と `context.this`、`this` tag を削除し、破棄済みなら score を全消去する。Mob のこの入口は `originID` を削除しない。

Object の [tick entry](../../TheSkyBlessing/data/asset_manager/functions/object/triggers/tick.mcfunction) も同じ load、dispatch、pointer 再取得、save の形を取る。Object の cleanup は `id`、`originID`、`this` を削除する。Object は `Object.DisableTicking` の個体を core selector で除外する。

Field の更新は正常終了後の save で永続化される。method 中に対象が破棄され ID / UUID score が失われた場合、save は行われない。この分岐を跨いで `this` の更新が残るとは仮定しない。

Objectの入口は、dispatch後に `if score @s ObjectID matches -2147483648..2147483647` でscoreを参照できるか確認し、できなければOhMyDatのpointer取得とFieldの書き戻しを省く。破棄後に個体のscoreを参照できなくなることを利用したguardである（ユーザー確認済みの用途）。全int範囲のif/unlessの真偽はDevSpaceの `docs/mcfunction-idioms.md` にある。Assetのabstract_projectileも衝突メソッド間と再帰前に同じguardを使う。型IDがあるという前提を破棄の境界で確認し直す処理なので、常にtrueとして削除したり、一般的な生死判定や `unless` へ置き換えたりしない。

## 継承 graph の構築

子の register は `storage asset:mob|object Extends` に直接親 ID を追加し、`asset:mob/extends` / `asset:object/extends` を呼ぶ。[Mob extends](../../TheSkyBlessing/data/asset/functions/mob/extends.mcfunction) と [Object extends](../../TheSkyBlessing/data/asset/functions/object/extends.mcfunction) は次を行う。

- 現在の型 ID をキーに、直接親 ID の列を ROM の `Mob.Extends` / `Object.Extends` へ保存する。
- 親ごとに alias register を再帰実行し、親の定義を同じ scratch storage へ構築する。
- 親を先、子 register の残りを後に実行する。

この順序により、親の値は既定値として入り、子の後続の代入が親を上書きする。複数親では後から register された親が前の親を上書きし、最後に子が上書きする。Field 以外の型属性にも同じ代入順が作用するため、変更時は register 全体の順序を確認する。

継承探索用の `CopiedExtends` と `IsFirstExtend` は配列の末尾へ積み、終了時に末尾を除く。再帰中の別探索を壊さないための stack である。

## virtual dispatch と super

固定 lifecycle は ID alias の `summon`、`init`、`tick`、Mob の `attack`、`hurt`、`death`、`remove` などへ dispatch される。任意 method は `asset:mob/call.m` / `asset:object/call.m` が `originID` を開始 ID に戻し、`method` を設定して `alias/$(id)/$(method)` を呼ぶ。[Mob call](../../TheSkyBlessing/data/asset/functions/mob/call.m.mcfunction) と [Object call](../../TheSkyBlessing/data/asset/functions/object/call.m.mcfunction) を参照する。

`call.m` は既に確立された同一個体の lifecycle／method context 内で使う内部 dispatch であり、`@within` もその範囲を指定する。対象 entity の選択、OhMyDat pointer の取得、`this` の load/save は行わない。これらを担う trigger 入口と役割を分け、`execute as` だけで別個体へ任意 method を呼べる API として扱わない。

実装の存在は method の返り値で判定しない。[Object run method](../../TheSkyBlessing/data/asset_manager/functions/object/call_method/run_method.m.mcfunction) などは alias 関数を直接実行した後、同じ function ID を `2147483647t` へ schedule できたかを `storage asset:object|mob Implement` に保存し、直後に schedule を clear する。`Implement` は function resource の存在検出であり、method の終了コード、成功値、業務上の結果ではない。任意 call が method の返り値を転送する共通契約もない。

現在 ID に実装があれば、暗黙 dispatch はその ID の親へ降りない。未実装なら ROM の直接親列を探索する。各直接親について、自身に実装があれば呼び、なければ同じ規則で祖先を再帰探索する。一つの直接親で実装が見つかっても sibling の直接親探索は続くため、複数親 graph では複数の実装が呼ばれ得る。

探索順には差がある。

- Mob の lifecycle と任意 method は直接親列の先頭から処理する。
- Object の summon / init / tick は先頭から処理する。
- Object の任意 method は末尾から処理する。[Object method foreach](../../TheSkyBlessing/data/asset_manager/functions/object/call_method/call_super_methods/foreach.mcfunction) は末尾を選び、末尾から削除する。

Object の任意 call は `Implements` stack に探索全体の実装有無を記録し、全探索後に未実装エラーを出す。Mob の任意 call は親が無い地点で未実装エラーを出す。両者を同じ終了条件にまとめない。

`asset:mob/super.tick` などは現在 ID の [親探索](../../TheSkyBlessing/data/asset_manager/functions/mob/triggers/tick/call_super_methods/.mcfunction) を明示的に呼ぶ。現在の型に実装があっても親群を追加で呼ぶ操作である。

## context の stack と限界

context は単一の storage なので、ネスト可能な入口が用途別に値を退避する。

| stack | 用途 |
|---|---|
| `IDStashStack` | nested summon、extends、super、任意 method 中の現在 dispatch ID |
| `ThisStashStack` | Mob / Object の nested summon 中に外側の作業 Field を保持 |
| `MethodStashStack` | 任意 method から別の任意 methodを呼ぶ場合の method 名 |
| `CopiedExtends` | register と method の再帰的な親探索 |

[ID stash/pop](../../TheSkyBlessing/data/asset_manager/functions/common/context/id/stash.mcfunction)、[this stash/pop](../../TheSkyBlessing/data/asset_manager/functions/common/context/this/stash.mcfunction)、[method stash/pop](../../TheSkyBlessing/data/asset_manager/functions/common/context/method/stash.mcfunction) は空の要素も compound の `Value` に包んで積む。値の型や不在を list の要素型に固定しないためである。

これは任意の失敗を含む全面的な reentrancy 保証ではない。Mob / Object core summon は stash 後、未知 ID なら pop より前に `return fail` する。呼出側は無効 ID の nested summon 後にも外側 context が必ず復旧すると仮定してはいけない。

`asset_manager:common/reset_all_context` という名前も storage 全体の削除を意味しない。[実装](../../TheSkyBlessing/data/asset_manager/functions/common/reset_all_context.mcfunction) が削除するのは `New`、`Old`、`id`、`Items`、`Inventory` だけである。`this`、`originID`、Duration、Stack、各 stash stack は対象外である。各 lifecycle の正常経路にある個別 cleanup も確認する。

## diagnostic である制約

`ExtendsSafe`、二番目以降の親に対する `IsAbstract`、abstract 型の直接 summon は、現行実装では違反時に `tellraw` する。`return` で処理を止めないため、実行時に強制される型安全性ではない。[Object extends foreach](../../TheSkyBlessing/data/asset/functions/object/extends/foreach.mcfunction) と [Object summon dispatch](../../TheSkyBlessing/data/asset_manager/functions/object/summon/.mcfunction) が直接根拠である。

Wiki の [Object 作成手順](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-object) は `register` を「load 時に1回」、abstract を「直接召喚不可」と説明するが、現行では summon ごとに alias register を評価し、違反は診断後も summon dispatch が続く。ここでは設計上避けるべき利用と、runtime が強制拒否する条件を分ける。

新しい型は規約を満たすよう定義するが、基盤が不正利用を拒否する、または不正 graph を安全に復旧するとは説明しない。循環継承の検出もこの経路にはない。

## Effect は別の個体モデル

Effect も ID、register、Field、継承、固定 event を持つが、Mob / Object と同一の dispatch 基盤ではない。

- register と `given` / `re-given` / `tick` / `remove` / `end` は numeric alias macro ではなく function tag 全走査と ID 条件 wrapper で dispatch する。
- 継承は複数の直接親列ではない。give 時に `Extends` 列を ROM の単一親 chain `child -> parent` へ分解保存する。[Effect parent map](../../TheSkyBlessing/data/api/functions/entity/mob/effect/core/put_id_to_map.mcfunction) を参照する。
- 個体は entity そのものではなく、entity の OhMyDat `Effects[]` に入る各 compound である。各要素が ID、Duration、Stack、Field を持つ。
- arbitrary named method はなく、固定 event だけを dispatch する。

[Effect tick](../../TheSkyBlessing/data/asset_manager/functions/effect/tick.mcfunction) は entity の `Effects[]` を一旦取り出し、順に処理する。[Effect foreach](../../TheSkyBlessing/data/asset_manager/functions/effect/foreach.mcfunction) は一要素を `TargetEffect` に移し、ID、Duration、Stack、Field を context に展開する。event 後に Duration、Stack、`this` を要素へ戻し、終了条件なら破棄し、残れば `NextTickEffects` へ追加する。

Effect の `this` も永続 `Effects[].Field` の作業窓という点は共通する。ただし super は単一親 ID の stash だけを使い、Mob / Object の This/Method/CopiedExtends stack は使わない。FieldOverride は give 時に生成する EffectData.Field へ merge される。[Effect data construction](../../TheSkyBlessing/data/asset_manager/functions/effect/give/make_effect_data.mcfunction) を参照する。

再付与では旧 `Field` が `EffectData.PreviousField` に複製され、event 中だけ `asset:context PreviousField` として読める。event 後には一時キーが除去されるため、次回比較したい値（例: 前回 stack）は event 実装が `this` に記録する。`DurationOperation:"replace"` は単純な duration の最大値ではなく、現行コードでは新 stack が旧 stack 以上なら duration の大きい方、下回るなら旧 duration を維持する。

### 付与要求とイベント配送

giveは保存データを作り、`NextEvent` を予約する。givenをそのコマンド内で実行するわけではない。[make_effect_data](../../TheSkyBlessing/data/asset_manager/functions/effect/give/make_effect_data.mcfunction) は同IDの既存データがあればre-givenを予約するため、最初のgivenの配送前に再付与すると、givenを通らずre-givenが最初に呼ばれる。利用側はgiven済みの初期化状態をre-givenの必須前提にしない。

getで取得できることは補正等の発効済みを意味しない。保存先には付与待ちや削除予約も含まれる。foreachはgiven/re-givenの回に通常tickを重ねず、削除予約中にも通常tickを呼ばない。付与先をまたぐ操作の反映時点は各付与先の処理順にも依存する。呼出し時点、イベント実行、書き戻し、終了を一つの即時操作として扱わない。

全イベントは [Effect tick](../../TheSkyBlessing/data/asset_manager/functions/effect/tick.mcfunction) から付与先を `as` / `at` として配送され、その間だけ付与先に `this` タグが付く。`execute as` で他のentityへ移った後に付与先を `@e[tag=this]` 等で参照できる。付与元ではなく付与先を指す。Effect tickはプレイヤー・Mob・Objectの各tickが `this` を外した後に1体ずつ走るため、別の入口の `this` と同時には付かない。Effectのイベントから同期的に `this` を付け外しする処理を本体に追加すると、この前提が崩れる。

### 削除予約と自己終了の制約

[remove/from_idの内部処理](../../TheSkyBlessing/data/api/functions/entity/mob/effect/core/remove/from_id.mcfunction) は、保存先から取得できたEffectの `Duration=-1` を設定し、保存先へ戻す削除予約である。API呼出しの直後にremoveイベントを実行するわけではない。

この版のtickは処理対象の `Effects[]` をOhMyDatから取り出す。[try_pop_effect_data](../../TheSkyBlessing/data/asset_manager/functions/effect/common/try_pop_effect_data.mcfunction) は保存先を検索するため、処理中のEffectを自己remove APIから取得できない。[#1673](https://github.com/ProjectTSB/TheSkyBlessing/issues/1673) に関係する制約であり、「Effectが付与されているなら、どのイベントからでも同じAPIで操作できる」と仮定しない。

foreachは `TargetEffect` のDuration/Stackでremove/endを判定してから、contextの変更を書き戻し、終了した要素を破棄する。この順序のため、イベント中に `context.Duration=0` としても、変更後の値でendが呼ばれる保証はない。自己終了では、終了要求と補正等の後始末を区別する。本体の処理順を変更する際は、手動の後始末と終了イベントの両方が走るようにならないか、二重実行できない副作用がないかを利用側まで確認する。

### 死亡時の削除・tick・残り時間

死亡時の処理はEffectの付与先に対して行う。[giveの既定値](../../TheSkyBlessing/data/api/functions/entity/mob/effect/core/give.mcfunction) は `ProcessOnDied:"remove"`。tickはDeathタグまたはトーテム使用をDeathProcessへ集約し、foreachがremove指定のEffectへ削除予約を設定する。付与元の死亡から他の付与先へ削除を伝播する機能ではない。

死亡処理中・リスポーン待ちの通常tickイベントはkeep指定だけが実行対象になる。一方、残り時間の減算は通常tickイベントの呼出しとは別であり、付与・再付与待ちと削除予約を除いて行う。keep以外だから時間も停止する、keepなら未接続中も時間が進む、と解釈しない。死亡時に消すか、イベントを動かすか、残り時間が減るかを分けて確認し、個別Assetから内部タグの条件を複製せず公開されたEffect定義を使う。

Artifact には、この調査範囲で Mob / Object 型の extends、super、任意 `call.m` runtime は確認されていない。alias という名前だけで同じクラス実行系と判断しない。

## 実装時の確認

1. 呼出入口から `as` / `at` を辿り、method 内の `@s` と位置を確定する。
2. register の親呼出し位置と、その前後の代入から最終的な型属性と Field を決める。
3. ROM に保存される直接親の順序と、対象 lifecycle の探索方向を確認する。
4. `Implement` を method の成否や返り値として使わない。
5. `this` の load 元と save 先、対象破棄時の save 条件を一組で確認する。
6. nested summon / call / super では対応する stash と正常・失敗両経路の pop を確認する。
7. abstract / extends の診断を実行時の拒否保証として扱わない。
8. Effect を扱う場合は Mob / Object の alias・複数親モデルを流用せず、Effects 配列の復元まで追う。
