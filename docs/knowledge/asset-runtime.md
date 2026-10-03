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

## Effect の保存データとイベント処理

この節の書き戻し・自己削除・処理順は、`tick` が `snapshot.m` → `foreach/process.m` → `finish.m` を使う実装に対応する。旧 `foreach` が `Effects[]` を取り出して `NextTickEffects` へ戻す実装とは契約が異なる。別ブランチや依存repoから参照するときは、利用する本体の入口を確認する。基準commitと作業コピーの変更の区別は [出典](sources.md#effect-の処理中の削除再付与) を参照する。

Effect はエンティティに付与する効果であり、Mob / Object のエンティティそのものとは区別する。ID、register、Field、継承を持つが、任意名の method を呼ぶ仕組みはなく、`given` / `re-given` / `tick` / `remove` / `end` の決まったイベントを呼び出す。

### 用語と保存場所

コードの識別子と説明の対応を以下に示す。「Effect」は付与する効果を指し、保存場所や更新を説明するときは「Effect データ」と明記する。

| 用語 | 意味・対応するコード |
| --- | --- |
| Effect 定義 | `register` が組み立てる名前、既定の Field、最大 Stack 等。付与先ごとの現在値と区別する。 |
| 付与先 | Effect を持つエンティティ。付与した側やイベントの発生源を意味しない。manager の `@s` がこれに当たる。 |
| 付与中の Effect | 特定の付与先に付与されている効果。同じ付与先では同じ ID の Effect を一件として扱い、再付与はそのデータを更新する。 |
| 保存データ | 付与先の OhMyDat `Effects[]` に保持する Effect データ。ID、Revision、Duration、Stack、Field 等を持つ。 |
| 作業データ（context） | イベント実行中に読み書きする `asset:context` の値。`this` は Field、Duration / Stack は同名の保存値に対応する。保存データへの反映時点は下記の API 前後とイベント終了後。 |
| 処理予定 | tick 開始時に `TickQueue` へ記録した `{ID, Revision}` の一覧。今回処理する対象と順序を固定する。Effect の全データを複製したものではない。 |
| 更新番号 | `Revision`。新規付与・再付与ごとに割り当て、処理予定を作った後の再付与を識別する。Duration の減算や Field の編集では変えない。 |
| 削除予約 | remove API 等が `Duration=-1` を設定した状態。まだ `Effects[]` に残っており、終了処理でデータの削除と `remove` の呼び出しを行う。 |
| 終了処理 | 保存データを削除し、削除予約なら `remove`、残り時間または Stack が 0 なら `end` を呼ぶ処理。後者を自然終了と呼ぶ。 |

### 付与要求とイベント配送

giveは保存データを作り、`NextEvent` を予約する。givenをそのコマンド内で実行するわけではない。[make_effect_data](../../TheSkyBlessing/data/asset_manager/functions/effect/give/make_effect_data.mcfunction) は同IDの既存データがあればre-givenを予約するため、最初のgivenの配送前に再付与すると、givenを通らずre-givenが最初に呼ばれる。利用側はgiven済みの初期化状態をre-givenの必須前提にしない。

getで取得できることは補正等の発効済みを意味しない。保存データには付与待ちや削除予約も含まれる。[process](../../TheSkyBlessing/data/asset_manager/functions/effect/process.m.mcfunction) はgiven/re-givenの回に通常tickを重ねず、削除予約中にも通常tickを呼ばない。付与先をまたぐ操作の反映時点は各付与先の処理順にも依存する。呼出し時点、イベント実行、書き戻し、終了を一つの即時操作として扱わない。

全イベントは [Effect tick](../../TheSkyBlessing/data/asset_manager/functions/effect/tick.mcfunction) から付与先を `as` / `at` として配送され、その間だけ付与先に `this` タグが付く。`execute as` で他のentityへ移った後に付与先を `@e[tag=this]` 等で参照できる。付与元ではなく付与先を指す。Effect tickはプレイヤー・Mob・Objectの各tickが `this` を外した後に1体ずつ走るため、別の入口の `this` と同時には付かない。Effectのイベントから同期的に `this` を付け外しする処理を本体に追加すると、この前提が崩れる。

### 定義・継承と保存データ

register と各イベントは function tag の全走査と ID 条件の wrapper で呼び出す。継承は単一の親を辿る。give 時に `Extends` 列を ROM の `child -> parent` へ分解保存する。[親 ID の登録](../../TheSkyBlessing/data/api/functions/entity/mob/effect/core/put_id_to_map.mcfunction) を参照する。

同じ付与先に同じ ID の Effect データが複数ある状態は想定しない。旧データの Revision 未設定には対応するが、不正な重複データを修復する処理は含まない。

### 保存データと処理予定

[Effect tick](../../TheSkyBlessing/data/asset_manager/functions/effect/tick.mcfunction) は `Effects[]` を保存先に残し、[snapshot](../../TheSkyBlessing/data/asset_manager/functions/effect/snapshot.m.mcfunction) で `{ID, Revision}` の処理予定を保存順に作る。[foreach](../../TheSkyBlessing/data/asset_manager/functions/effect/foreach.mcfunction) は処理予定を順に進め、[process](../../TheSkyBlessing/data/asset_manager/functions/effect/process.m.mcfunction) が一致する Effect データを取得する。配列の添字は API の抜き取り・append で変わるため、Effect の識別には使わない。`NextTickEffects` への退避・復元は行わない。

[make_effect_data](../../TheSkyBlessing/data/asset_manager/functions/effect/give/make_effect_data.mcfunction) は付与先の `EffectRevision` を進め、新規付与・再付与する Effect の `Revision` へ割り当てる。削除予約では更新番号を変えない。旧データの未設定 Revision は snapshot 時に 0 として補完する。

実行直前に保存データと処理予定の Revision が違えば、その処理予定をスキップする。途中の新規付与・再付与のイベントは、次の Effect tick で呼び出す。再付与先の Effect が処理前か処理後かによって、re-given の実行時点が変わらないようにするためである。たとえば A のイベントで未処理の B を再付与した場合も、再付与前の B の処理予定をスキップして次回に回す。Revision はこの実行時点を揃えるための識別情報であり、削除 API の成立自体に必須の値でも、検索を高速化する index でもない。

### API 前後の書き戻し・読み直し

`asset:context this` は、イベント実行中に `Effects[].Field` を編集するための作業データである。現在処理中の付与先は内部タグ `Effect.CurrentOwner`、Effect の ID・Revision・実行段階は `asset:effect Current` で管理する。継承元のイベントを呼ぶ際に変わる `context.id` と、保存対象を識別する `Current.ID` を区別する。

ここでの `this` はstorageのField名であり、付与先に付く同名のentityタグとは別物である。[内部タグの宣言](../../TheSkyBlessing/data/asset_manager/functions/effect/_index.d.mcfunction) にある `Effect.CurrentOwner` もmanagerとAPI前後処理だけの公開範囲で、個別Effectの自己除外用に参照しない。

[before_api](../../TheSkyBlessing/data/asset_manager/functions/effect/context/before_api.mcfunction) は API の対象である付与先の OhMyDat を参照し、同じ付与先の given / re-given / tick 中なら context の Duration・Stack・Field を保存データへ書き戻す。get の ForwardTarget 経路も、転送先でこの処理を呼ぶ。give/remove の後は [after_api](../../TheSkyBlessing/data/asset_manager/functions/effect/context/after_api.mcfunction) が、処理中の Effect の更新後の保存データを Current.Data と context へ読み直す。自己再付与の場合は Current.Revision も更新する。

別の付与先への API 操作では、現在の context をその付与先へ書き戻したり、その保存データで context を上書きしたりしない。remove / end 中の context に対しても、API 前後の書き戻し・読み直しを行わない。`Argument` / `Return` はこの処理の一時領域に使わず、既存の reset 契約を維持する。

取得した Effect 全体は `Current.Data` に保持する。[flush](../../TheSkyBlessing/data/asset_manager/functions/effect/context/flush.m.mcfunction) は context の Duration・Stack・Field をここへ反映し、Effect 全体を一度に書き戻す。属性ごとの配列検索を減らすための保持領域であり、公開 API からの更新を読み直すことが前提になる。保存データを変更する API を追加するときも、同じ付与先なら処理前の flush と処理後の refresh を通す。保存先に ID/Revision が一致する要素がなければ Current.Data を破棄し、書き戻しも終了イベントも行わない。

given / re-given / tick から戻った後は、OhMyDat の参照先を現在の付与先へ戻し、context を書き戻す。削除予約は後続の Duration 変更で取り消さない。Field は全体を set するので、イベント内で削除した Field のキーが merge によって復活することも避ける。

FieldOverride は付与時に作る Field へ merge される。再付与時には API 前に書き戻した旧 Field が `PreviousField` に入る。現在実行中のイベントに渡した PreviousField と、次の re-given に渡す PreviousField は区別する。今回分の `NextEvent` と `PreviousField` はイベントを呼ぶ前に Current.Data から除く。保存先への反映は API 前またはイベント終了時の一括保存で行う。再付与後は refresh が新しい予約も読み直す。イベントから戻った後に一律削除すると、途中の再付与で新しく設定された値も消してしまう。

`DurationOperation:"replace"` は、新 Stack が旧 Stack 以上なら Duration の大きい方、下回るなら旧 Duration を維持する既存の計算を使う。

### 削除予約と終了処理

[#1673](https://github.com/ProjectTSB/TheSkyBlessing/issues/1673) の旧実装では foreach 中に `Effects[]` を保存先から取り出しており、保存先だけを探す remove API から処理中の Effect が見えなかった。保存先に一覧を残すことで、既存の `remove/from_id` / `remove/from_level` が自分自身を含む付与中の Effect を扱える。[#2265](https://github.com/ProjectTSB/TheSkyBlessing/issues/2265) 向けの専用 API は追加しない。継承元のイベントから自分を指定するときは `context.originID` を使う。

旧foreachはcontextのDuration/Stackを書き戻す前にremove/endを判定していたため、イベント中に `Duration=0` としてもendを経ずに消える経路があった。現在のfinishは書き戻し後に判定する。旧方式のために手動で後始末していた利用側を移すときは、終了イベントでも同じ処理が走るかを確認する。補正解除を複数回呼べる場合と、消費・報酬等を一度だけ行う場合を分け、実装例の説明も同じ契約へ更新する。

削除 API は既存と同じ `Duration=-1` で削除予約を設定する。実行中のイベントの残りのコマンドは続行する。通常の自己削除ではイベントから戻った後、未処理の Effect はその処理時、処理済みの Effect は次の Effect tick に remove を呼ぶ。再付与直後に削除予約を設定した場合は、次回 re-given の初期化・差分処理を済ませてから remove を呼ぶ。`remove → give` では、削除予約済みの Effect への再付与を拒否する従来の扱いを維持する。

[finish](../../TheSkyBlessing/data/asset_manager/functions/effect/finish.m.mcfunction) は書き戻した Current.Data で終了を判定し、Duration=-1 による remove を、Duration=0 / Stack=0 による end より優先する。終了判定より先に context を書き戻すことで、イベント内の Duration / Stack の変更にも終了イベントが対応する。

終了時は Current.Phase を ending にし、ID/Revision が一致するデータを `Effects[]` から削除してから、remove / end の一方だけを呼ぶ。終了する Effect の context はイベントに渡すが、保存データへ書き戻さない。そのため、終了イベント中の get は削除済みのデータを返さず、同 ID の give は新規付与になる。新しく設定した given は次回に呼び出す。

remove API が要素を末尾へ戻す既存の動作は残る。今回の実行順は tick 開始時の処理予定で固定されるが、次回は変更後の保存順になる。`from_level` はその時点の一覧を末尾から判定し、ClearCount を一覧全体に適用する。0 以下なら削除予約を設定しない。

### 死亡時の削除・tick・残り時間

死亡時の処理はEffectの付与先に対して行う。[giveの既定値](../../TheSkyBlessing/data/api/functions/entity/mob/effect/core/give.mcfunction) は `ProcessOnDied:"remove"`。[tick](../../TheSkyBlessing/data/asset_manager/functions/effect/tick.mcfunction) はDeathタグまたはトーテム使用をDeathProcessへ集約し、[process](../../TheSkyBlessing/data/asset_manager/functions/effect/process.m.mcfunction) がremove指定のEffectへ削除予約を設定する。付与元の死亡から他の付与先へ削除を伝播する機能ではない。

死亡処理中・リスポーン待ちの通常tickイベントはkeep指定だけが実行対象になる。一方、残り時間の減算は通常tickイベントの呼出しとは別であり、付与・再付与待ちと削除予約を除いて行う。keep以外だから時間も停止する、keepなら未接続中も時間が進む、と解釈しない。死亡時に消すか、イベントを動かすか、残り時間が減るかを分けて確認し、個別Assetから内部タグの条件を複製せず公開されたEffect定義を使う。

### 規模と検証範囲

ID 条件検索を各要素に行うため、foreach の探索量は O(N²)。イベント内で API を呼ばず、終了もしない場合、1 Effect あたりの検索は初回の取得・保存先の存在確認・一括保存の3回。API 呼出し時の同期や終了時の削除では検索が増える。ユーザー提示の想定規模は付与先一体あたり約10要素であり、コード上の10件制限ではない。添字を固定するための無効印・圧縮や保存形式の移行を避けるため、この方式を試作に採用した。検索回数を減らしても、NBT コピー・pointer 取得・macro の費用は残る。管理処理ベンチマークで変更前後を比較し、実ゲームの付与先数やイベント本体を含む負荷とは区別して判断する。

[検証手順・シナリオ](../../tests/effect-runtime/README.md) と [実行記録](../../tests/effect-runtime/results.md) に、前提・期待値・失敗と再試行・性能比較・確認範囲を置く。検証用 Effect は隔離コピーへだけ追加し、本番 tag へ接続しない。API とイベント、core tick、表示用データは確認対象だが、通常ログイン・実ダメージ・描画の検証とは区別する。

Artifact には、この調査範囲で Mob / Object 型の extends、super、任意 `call.m` runtime は確認されていない。alias という名前だけで同じクラス実行系と判断しない。

## 実装時の確認

1. 呼出入口から `as` / `at` を辿り、method 内の `@s` と位置を確定する。
2. register の親呼出し位置と、その前後の代入から最終的な型属性と Field を決める。
3. ROM に保存される直接親の順序と、対象 lifecycle の探索方向を確認する。
4. `Implement` を method の成否や返り値として使わない。
5. `this` の load 元と save 先、対象破棄時の save 条件を一組で確認する。
6. nested summon / call / super では対応する stash と正常・失敗両経路の pop を確認する。
7. abstract / extends の診断を実行時の拒否保証として扱わない。
8. Effect は保存データ・ID/Revision の処理予定・context の作業データを分け、API 前後の書き戻し・読み直しと終了時のデータ削除まで追う。
