# API・storage・scoreboard

API を使う前に、その API が行為、寄与の登録、個体生成、状態の取得のどれを提供するかを確認する。[本体の抽象構造](architecture.md) に、呼出フレーム、modifier の出典 ID、イベント配送、緩衝体力の防壁モデルをまとめた。

TSBの状態・ゲームルールを扱う公開操作は `TheSkyBlessing/data/api/functions/`、汎用の処理部品は `TheSkyBlessing/data/lib/functions/` を配置先の候補にする。libにも公開APIがある。内部処理は既存のcore・manager・各機能のcore等の責務に合わせる。追加・変更時は引数・storage・scoreboard・戻り値をIMP Docへ明記する。API関数は呼出側のエンティティを暗黙に利用する関数が多い。呼出前に `as`/`at`、対象タグ、実行者を確認する。関数名のコメント（`#>`、`# @public`、`# @within`）が契約の入口で、`_index.d.mcfunction` は宣言と可視性の台帳である。

引数・結果は一時storageを介するパターンが中心で、まず対象APIと同じディレクトリの `get/set/add/remove` を読む。例としてDamageAPIのPR #2268では `Argument.ReduceEnchantment` と `Enchantments` のstorage namespace不一致が修正され、`api:ReduceEnchantmentID` の削除も追加された。storageのnamespace、パス、型、後片付けを一組で確認する。

グローバル状態には `storage global` と scoreboard が使われ、`core:load_once` が初期化の入口となる。個体ごとの永続状態には OhMyDat の `MobField`／`ObjectField`／`Effects` 等もあり、生成・付与時に作られるため、永続状態の保存先と初期化時点を一律に扱わない。[個体状態の保存](asset-runtime.md) を参照する。グローバルscore holderには `$PlayerCount`、`$Difficulty` 等がある。score holderの宣言は必要な公開範囲に置き、objectiveは `core:load_once` の定義箇所で公開範囲を指定する。

`Temporary`・`Const` の利用と明示宣言の規約はDevSpaceの `AGENTS.md` を参照する。本体は共通objectiveを `core:load_once` で定義し、定数値は `core:define_const` で管理する。不足する定数はこの定義へ追加する。初期化の実行時点と更新方法は [loadの変更手順](runtime-and-assets.md#変更手順) に従う。

API仕様として確定していないレビューコメント（特に一時値の取り回し）は、そのPRの結論と現行コードを優先し、推測で外部利用契約にしない。

Wiki の [API](https://github.com/ProjectTSB/TheSkyBlessing/wiki/api) は利用目的を探す索引として有用で、引数は原則自動 remove、damage/heal/effect 等は例外として呼出側 reset と説明する。現行実装では成功と validation failure でも cleanup が異なるため、一般則だけで判断しない。Wiki の Absorption 取得例は引数なしで `Return.Amount` 等を読む形だが、現行 `get` は `Argument.UUID` を必須とし、core が `Return.Absorption` を作る。IMP Doc、公開 wrapper、core、現行呼出側を一組で確認する。

[load_onceのBoolean表](../../TheSkyBlessing/data/core/functions/load_once.mcfunction) の `Boolean.1`・`Boolean.1b`・`Boolean.true` は、macroに渡る異なる真値の表記を `Boolean.$(IsHogeFuga)` のように同じ条件判定へ取り込むために用意されている（ユーザー確認済み）。同じtrueへの重複代入として表を一つへ縮めず、呼出側の引数表現も契約に含める。

## libとapiは責務と公開範囲を分けて判断する

新しい共通処理は、TSB固有の状態やルールをどこまで扱うかで配置を決める。`api`／`lib` というnamespaceと、呼出可能範囲を定めるIMP Docは別の判断である。

| 処理の責務 | 配置先の候補 | 現行の例 |
| --- | --- | --- |
| 幾何・配列・向きなど、複数の機能で使う処理部品 | `lib` | [array/session/open](../../TheSkyBlessing/data/lib/functions/array/session/open.mcfunction)、[rotate_display](../../TheSkyBlessing/data/lib/functions/rotate_display/.mcfunction) は `@api` を持つ |
| TSBのダメージ計算、補正、Assetの生成などの公開操作 | `api` | [damage](../../TheSkyBlessing/data/api/functions/damage/.mcfunction)、[mob/summon](../../TheSkyBlessing/data/api/functions/mob/summon.mcfunction) |
| 特定機能の状態管理、tick編成、公開操作の下請け | その機能のmanager・core等 | [damage/core/modify_damage.m](../../TheSkyBlessing/data/api/functions/damage/core/modify_damage.m.mcfunction) は呼出元を制限する |

例えば範囲内の対象を選ぶ幾何計算はlib、選んだ対象へTSBのダメージを与える操作はapi、神器固有の発動条件と演出はAssetが担当する。複数箇所から呼ぶことだけを理由に、TSB固有の処理を汎用libへ移さない。

lib の機能内では、公開入口と宣言を直下に置き、内部補助関数をその機能の `core/` 配下へ置く。内部処理を役割別に分ける場合も `core/` 内で構造化する。初期化や生成表も内部関数であり、公開入口と同じ階層へ並べない。

現行の配置には例外もある。[lib:score_to_health_wrapper/proc](../../TheSkyBlessing/data/lib/functions/score_to_health_wrapper/proc.mcfunction) はTSBの体力反映を扱い、呼出元をplayer/postに制限している。lib全体を「状態を持たない」「誰でも使える」「単体で他のパックへ移せる」と扱わず、既存関数の移動も名前だけでは決めない。Assetから使うときは、namespaceにかかわらず関数と参照するtag・score・storageの公開範囲、入力、結果、後始末を確認する。

## 攻撃の属性と能力値のAttributesを区別する

Damage APIの属性は、一回の攻撃を分類して補正先を選ぶ入力である。神器のTCDが使う種別とは独立している。

| 入力 | 値 | 意味 |
| --- | --- | --- |
| `Argument.AttackType` | `"Physical"`／`"Magic"` | 第一属性。物理／魔法のいずれかを指定する必須入力 |
| `Argument.ElementType` | `"None"`／`"Fire"`／`"Water"`／`"Thunder"` | 第二属性。無／火／水／雷。未指定時は `"None"` |

[damage/modifier](../../TheSkyBlessing/data/api/functions/damage/modifier.mcfunction) と [damage](../../TheSkyBlessing/data/api/functions/damage/.mcfunction) は、それぞれの呼出時点の属性を使う。どちらも単一の文字列で指定する。`Physical` と `Fire` は併用できるが、`ElementType` へ配列を渡して複数属性の攻撃にする契約はない。見た目に炎や雷を使っても、API引数が自動でその属性になるわけではない。

能力補正の `Attributes.Default`／`Modifier`／`Value` は、これらの分類ごとの倍率などを保持する別のデータである。構造と更新方法は [能力補正の寄与](architecture.md#能力補正は識別できる寄与から組み立てる) を参照する。[共通のダメージ補正](../../TheSkyBlessing/data/api/functions/damage/core/modify_damage.m.mcfunction) は、AttackまたはDefenseのBaseと、選んだ第一・第二属性の値を読む。丸めと最低倍率の適用前は `Base × (第一属性の値 + 第二属性の値 - 1)` で、未設定の倍率とNoneは1として扱う。第一属性と第二属性の倍率をそのまま掛け合わせる式ではない。

この共通計算は [プレイヤーの攻撃補正](../../TheSkyBlessing/data/api/functions/damage/core/modify/player.mcfunction) と [対象の防御補正](../../TheSkyBlessing/data/api/functions/damage/core/attack.mcfunction) で使う。現在の [non-playerのmodifier](../../TheSkyBlessing/data/api/functions/damage/core/modify/non-player.mcfunction) は攻撃者情報の記録のみで、同じ攻撃倍率計算は行わない。BypassModifier・FixedDamageによる省略と、攻撃情報の記録は下記の契約に従う。

## NBTの代入結果を変更検知に使う

NBTの比較兼更新と、欠損時に既定値を残すstoreの順序は、DevSpaceの `docs/mcfunction-idioms.md` にまとめている。本体で使う場合は、共通の仕組みに加えて次の契約を守る。

| 利用先 | 比較・保存するもの | この利用先で保つ条件 |
| --- | --- | --- |
| [装着音の判定](../../TheSkyBlessing/data/player_manager/functions/play_equip_sound/validate.mcfunction) | Oldの神器UUIDをNewへ更新し、変更の成功値を使う | Oldは比較後に更新済み。NewがUUIDを持たない通常アイテムは別分岐で扱う |
| [DataCache](../../TheSkyBlessing/data/api/functions/data_get/_restore_or_fetch.mcfunction) | 保存したTimeを現在Timeへ更新する | tickが同じでもIsDirtyなら再取得する。時刻の一致だけで最新とはしない |
| [cooldownの比較](../../TheSkyBlessing/data/asset_manager/functions/artifact/cooldown/common/compare_cooldown.mcfunction) | 未設定のTCDを-16としてLCDと比較する | 存在判定をstoreより前に置き、欠損と0を区別する |

## Damageの補正と攻撃情報の記録を分ける

[damage/modifier](../../TheSkyBlessing/data/api/functions/damage/modifier.mcfunction) は攻撃元を実行者として攻撃側の補正を `Argument.Damage` に適用し、[damage/](../../TheSkyBlessing/data/api/functions/damage/.mcfunction) は攻撃対象を実行者として防御側の補正を適用する。同じ `Argument.BypassModifier` でも、どちらの呼出し時点で設定されているかによって除外する側が変わる。攻撃元の補正だけを考慮したいときは、modifierでは補正を有効にし、その後 `BypassModifier:true` に切り替えてからdamageを呼ぶ（ユーザー確認済みの用途）。二つの呼出しの間のフラグ変更を冗長としてまとめない。

`FixedDamage:true` はmodifierでも `BypassModifier:true` を設定するため、攻撃側の補正も除外する。damageではさらに防具・エンチャント・耐性・難易度等のBypassフラグもtrueにする。`FixedDamage:false` に戻すだけでは既に設定された個別フラグはfalseにならない。必要な補正を各呼出し時点で明示し、一連の攻撃処理が終わったら [damage/reset](../../TheSkyBlessing/data/api/functions/damage/reset.mcfunction) で後始末する。

同じ一撃を複数対象へ与える用例は、攻撃元でmodifierを一度呼び、対象ごとにdamageを呼び、全対象の後でresetする。modifierはArgument.Damageをその場で補正するため、補正済みの値へ対象ごとに再度modifierを掛けると多重補正になり得る。Mobの識別子をすでに持つ場合は、実体を再検索する代わりに [modifier_manual](../../TheSkyBlessing/data/api/functions/damage/modifier_manual.mcfunction) へ `Argument.MobUUID` を渡す経路もある。これはMobUUIDを受けるAPIであり、playerのUserIDを同じ引数として流用しない。

modifierは数値補正だけでなく、攻撃の出自と一回の攻撃の区切りも記録する。[プレイヤーのmodifier処理](../../TheSkyBlessing/data/api/functions/damage/core/modify/player.mcfunction) は、補正をスキップする場合も `Argument.Attacker`・`AttackerType`・`$LatestModifiedUser` を設定し、`$ModifierIndex` を増やす。この情報には次の利用先がある。

| 記録 | 利用先と意味 |
| --- | --- |
| `Argument.Attacker`・`AttackerType` | プレイヤーのHP減少時に [store_attack_info](../../TheSkyBlessing/data/lib/functions/score_to_health_wrapper/core/store_attack_info/.mcfunction) が攻撃者を解決し、被害者の `LatestAttackInfo.Name` を更新する。後の [死亡処理](../../TheSkyBlessing/data/lib/functions/score_to_health_wrapper/core/die.mcfunction) が `Return.AttackerName` として死亡メッセージへ渡す。 |
| `$LatestModifiedUser` | Mobへのダメージでは [Attackイベントの記録先](../../TheSkyBlessing/data/api/functions/damage/core/trigger_events/non-player/attack_and_hurt/.mcfunction) を選ぶ。Hurt/DeathのFrom、ダミーダメージの攻撃者、追加MP回復の対象にも使われる。 |
| `$ModifierIndex` | [Attackイベントの集約](../../TheSkyBlessing/data/api/functions/damage/core/trigger_events/non-player/attack_and_hurt/attack.mcfunction) で同じmodifier呼出しに続く複数対象へのdamageを一つのイベントの `To[]`・`Amounts[]` にまとめる。Mobからプレイヤーへの攻撃にも同じ集約がある。 |

[落下ダメージ](../../TheSkyBlessing/data/player_manager/functions/fall_damage/deal_damage/deal.mcfunction) は、攻撃補正を使わずにこの記録を行うため、`FixedDamage:true` でmodifierを呼ぶ（ユーザー確認済み）。プレイヤー自身を攻撃元として記録し、HP減少時に `LatestAttackInfo.Name` を自身の名前へ更新する。記録処理は攻撃者が指定されない場合に既存のNameを消さないので、modifierを省くと以前の攻撃者名が残り得る。ただし、既定の落下死メッセージは被害者名だけを使い、攻撃者名を表示しない。死亡メッセージ自体の保存は攻撃者情報の有無とは独立している。落下ダメージが自分へのAttackイベントやMP回復を起こすという意味ではなく、数値補正の無効化を理由に攻撃情報の初期化まで省かないための実例である。

Damageの `Argument.AdditionalMPHeal` は、未指定時だけ `PersistentArgument.AdditionalMPHeal` を既定値として取り込む。このPersistent値は [神器triggerの末尾](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/.mcfunction) で削除される。後のtickに攻撃するObjectやEffectまで持ち越される状態ではないため、遅延する攻撃は発動時の値を自分のField等に保存し、damage時にArgumentへ明示的に戻す。

### 遅延参照は評価時の文脈を契約にする

後で表示するTextComponentへselectorやstorage参照を残すと、生成時ではなく表示時の値を読める。発生時点の値を固定したい場合のsnapshotとは使い分ける。DeathMessageのTextComponentは、攻撃時に完成した表示へ変換する必要はない。[死亡処理](../../TheSkyBlessing/data/lib/functions/score_to_health_wrapper/core/die.mcfunction) は被害者を実行者にし、`lib: Return.AttackerName` を用意した後に保存したJSONをinterpretする。`with` 内の `{"selector":"@s"}` は死亡時の被害者、`{"storage":"lib:","nbt":"Return.AttackerName","interpret":true}` はその時点の攻撃者名を読むための遅延参照である。攻撃時の実行者名へ先に展開すると意味が変わる。利用例の `translate` にある `%1$s`・`%2$s` の順番と、名前を解決する時点を保つ。

### 耐性効果も本体の計算規則で読む

[耐性Lvの取得](../../TheSkyBlessing/data/api/functions/damage/core/get_status/get_resistance_lv.mcfunction) はamplifierへ1を足してLvにし、演出用のamplifier 127はhidden_effectを参照する特別扱いを持つ。[軽減計算](../../TheSkyBlessing/data/api/functions/damage/core/calc/resistance.mcfunction) の現行コマンドは `Damage × (10 - min(Lv, 10)) / 10` で、Lvごとに10%軽減する。式コメントには5を使う古い説明が残るため、コメントやVanillaの耐性倍率から数値を決めない。この耐性計算を通る場合、amplifier 9で軽減率が100%になる。FixedDamage等で耐性計算を回避する経路とは区別する。

## ボタンは共有Listenerと個人の実行権を分ける

[button/create_text_component](../../TheSkyBlessing/data/api/functions/button/create_text_component.mcfunction) はKeyとListenerを登録して表示を作る。Listenerは省略可能で、省略時はクリックできない表示になる。[Keyの登録](../../TheSkyBlessing/data/player_manager/functions/trigger/register/get_or_allocate_id.m.mcfunction) は既存KeyのIDを再利用し、Listenerを置き換えないため、同じKeyへ異なる処理を登録して切り替わるとは扱わない。

押せる権利はプレイヤーごとの `Trigger.<ID>` に保持され、[呼出処理](../../TheSkyBlessing/data/player_manager/functions/trigger/call_listener/check_and_call.m.mcfunction) がその値を削除してからListenerを実行する。[button/disable](../../TheSkyBlessing/data/api/functions/button/disable.mcfunction) は権利を取り消す操作で、既存チャットを消す操作ではない。同じKeyで再登録すると再び押せるため、過去のチャットに残った同じボタンからも実行できる。表示一個ずつの一回限りの権利が発行されるモデルと混同しない。 新しいメニューでは登録するKeyと無効化するKeyの集合を揃える。設定項目を追加するときは [メニュー作成](../../TheSkyBlessing/data/settings/functions/send_setting_menu.mcfunction) と [無効化](../../TheSkyBlessing/data/settings/functions/disable_settings_menu.mcfunction) の両方に有効化用・無効化用のKeyを揃える。

## 実装手順

1. `_index.d.mcfunction` と対象APIの `#>`/`# @public` を読み、呼出可能範囲と実行者を確認する。
2. `Argument` の入力パスと型を既存の同系統 `set/get/add/remove` と照合する。
3. 呼出後に読む結果storage/scoreを先に特定し、Return相当の値を消さない。
4. `Temporary` とarray sessionの後始末を成功・失敗分岐の双方で確認する。

典型的な失敗はnamespace取り違え（#2268）、引数残留（#2277）。補正の丸め順はopen/unmerged #2278の未確定調査例であり規約にしない。成功・未指定・対象なしを確認する。

## 現行例

吸収体力取得は [absorption/get.mcfunction](../../TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction) の契約が明確である。対象プレイヤーを実行者にし、防壁・効果の出典を識別する `storage api:` の `Argument.UUID`（int配列4要素）を準備して呼ぶ。この UUID は対象プレイヤーの指定ではない。結果は `Return.Absorption` で、該当UUIDがなければcoreが先に削除したままなので、呼出側は結果の存在も確認する。公開関数は成功時に入力UUIDを削除するが、validationの `return fail` では削除行へ到達しない。

```mcfunction
data modify storage api: Argument.UUID set value [I;1,2,3,4]
function api:entity/player/absorption/get
execute if data storage api: Return.Absorption run data get storage api: Return.Absorption
```

この3行は対象プレイヤーを実行者にした関数内で使う。外から呼ぶ場合は、同じ `execute as <selector> at @s run function ...` 境界の内側に引数設定から結果処理までを置く。

吸収体力追加は [absorption/add.mcfunction](../../TheSkyBlessing/data/api/functions/entity/player/absorption/add.mcfunction) の通り、`Argument.Amount`と`Argument.UUID`が必須で、`Priority`の既定値は0。成功経路は `Amount`、`UUID`、`Priority`、`WipedCallback` を削除する。必須値不足の失敗経路は早期returnするので、呼出側で残値を次の呼出しへ持ち越さない。

heal補正の [heal/modifier.mcfunction](../../TheSkyBlessing/data/api/functions/heal/modifier.mcfunction) は `as entity` で `Argument.Heal` をその場で更新するAPIである。これは独立したReturnを返す例ではない。呼出側が補正前の値も必要なら、呼出前に別pathへ複製する。このように「入力を消す」「入力を書き換える」「Returnを作る」はAPIごとに異なるため、共通の後始末規則へまとめない。
