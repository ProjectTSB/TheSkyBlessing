# 実行経路とasset

順序を辿る際は、その段階が観測値の正規化、差分の照合、寄与の更新、イベント配送、個体の実行のどれを担うかも確認する。装備・Damage・world 定義の横断的な経路と変更先の判断は [本体の抽象構造](architecture.md) にまとめた。

`minecraft:load`から `core:load` が呼ばれ、毎回の処理、`load_once`、migration、欠損チェック、artifact/mob registry loadの順に進む。productionフラグは `global.IsProduction` で、trueは不可逆な登録処理を伴うため変更時に注意する。

tickの全順序は `TheSkyBlessing/data/core/functions/tick/.mcfunction` を入口に追う。pre、arrow/nexus/4tick、artifact/player本体、context reset、island/spawner/teleporter/gimmick/mob/object/effect、再reset/item/log、postの順で呼ばれる。新規処理は実行頻度と実行主体を決め、適切な既存入口へ登録する。

asset_managerはartifact、mob、trader等の登録・呼出を担い、debugは分離されている。デバッグ関数を本番の呼出経路へ接続しない。Mob/Object/Effectのregister、継承、動的dispatch、永続Fieldと`asset:context this`の関係は [Assetの実行モデル](asset-runtime.md) を先に読む。`*.m.mcfunction` はmacro構文を使う手書き関数も含むため、拡張子だけで生成物と判断せず参照元を確認する。イベント入口はadvancement handlerから `core:handler/*` へ接続される。

イベントはadvancement条件→handler→asset/APIの順に追う。毎tickはpre→本体→post、低頻度処理は4tick入口へ登録し、`execute as/at`境界ごとにscore所有者を確認する。scheduleは登録・再登録・停止条件を揃える。production登録は`IsProduction`分岐とmigrationを併せて検証する。

## 神器tickと死亡・スペクテイター

[core:tick](../../TheSkyBlessing/data/core/functions/tick/.mcfunction) は `@a` 全員をplayer処理へ渡し、[player本体](../../TheSkyBlessing/data/core/functions/tick/player/.mcfunction) → `asset_manager:artifact/tick/player` → [triggers](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/.mcfunction) → [tick](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/tick.mcfunction) から神器tagを呼ぶ。この経路と [共通check](../../TheSkyBlessing/data/asset_manager/functions/artifact/check/.mcfunction) には、Death・InRespawnEvent・spectatorの一律除外がない。DataCache経由のinventory取得にもその除外はない。これだけを根拠に個別神器へ発動制限を追加しない。仕様上必要な条件を、Assetに公開されたAPI・リソースで判定する。

[宣言元](../../TheSkyBlessing/data/core/functions/_index.d.mcfunction) ではDeathは公開タグだが、InRespawnEventは本体内部の利用先に限定され、Artifactは含まれない。神器から参照する公開状態ではない。

死亡時に装備がなくなる場合と、神器tick自体の停止は別である。[死亡handler](../../TheSkyBlessing/data/core/functions/handler/death.mcfunction) の回収はplayer/postから呼ばれ、IsKeepInventoryやSoulBoundにも依存する。また、[エリア入場](../../TheSkyBlessing/data/world_manager/functions/area/02.islands/on_entered.mcfunction) は非creativeをsurvivalへ変更し、[respawn.delay](../../TheSkyBlessing/data/core/functions/handler/respawn.delay.mcfunction) はInRespawnEventを外す。状態別の試験は、設定コマンドの成功だけでなく検査時の状態を確かめる。確認範囲は [sources.md](sources.md) を参照。

## 遅延・再入・破棄をイベント境界から読む

[sneakの配送](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/sneak/.mcfunction) は、slotごとの継続時間を見てcontextのIDを絞り込む。`sneak/<N>s` は閾値と等しいslotだけ、`sneak/keep/<N>s` は閾値以上のslotを残してfunction tagを呼ぶ。同じ「N秒スニーク」でも単発と継続を区別し、function tagを呼ぶ外側の条件だけから発動回数を判断しない。

scheduleは呼出元の実行者・位置・回転やstorageのsnapshotを保存しない。[設定メニューの再送予約](../../TheSkyBlessing/data/settings/functions/resend_setting_menu/reserve.m.mcfunction) は、本人のscoreへ予定時刻を保存してからappendで予約し、[実行側](../../TheSkyBlessing/data/settings/functions/resend_setting_menu/as_schedule.mcfunction) が時刻の一致するプレイヤーを選び直す。再予約や `replace` / `append` の変更では、関数の予約と各プレイヤーの状態の両方を確認する。遅延先で以前の `@s` や共有storageの値をそのまま使えるとは扱わない。

[drop handler](../../TheSkyBlessing/data/core/functions/handler/drop.mcfunction) が付ける `StrictCheckMainhand` を [使用側](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/use_item/check_item_drop.mcfunction) で見てoffhandへ補正する処理は、両手に食べ物を持ち、offhandを食べるのと同時にmainhandを投げた場合の検出用と推定される（ユーザー回答も推定）。現行では使用側でtagを消すため、dropした時点だけの状態とは限らない。tagの寿命まで正しい実装例と扱わず、この同時操作を含めて検証する。

[APIによるダミー被弾](../../TheSkyBlessing/data/api/functions/mob/core/deal_dummy_damage/player.m.mcfunction) は、攻撃者に `AttackedByApi` を付けて0ダメージを実行し、直後にtagを外す。[advancementのreward](../../TheSkyBlessing/data/mob_manager/functions/entity_finder/player_hurt_entity/on_attack.mcfunction) はこのtagを見てVanilla攻撃検出への再流入を除外する。付けてすぐ外すtagにも実行中のイベントを区別する役割があり、次tickまで残らないから不要とは判断しない。advancementをtickで検査する経路とreward関数へ直結する経路を区別する。

Mobのtick入口は `Death` tagを一律には除外しない。論理的な死亡、death/removeメソッド、entityの消去には段階があるため、`tag=!Death` を伴う対象選択を「死んだentityは選べないはず」と削除しない。また [汎用tag処理](../../TheSkyBlessing/data/mob_manager/functions/processing_tag/.mcfunction) は `ProcessCommonTag` を持つ個体だけをcommon_tagへ送る。`AntiBurn` や `AutoKillWhenDieVehicle` 等はtag名だけでVanillaが処理する機能ではなく、そのdispatcherへ入ることも条件となる。

## 表示用の値へ変換してから、共通の表示処理へ渡す

[MPの経験値バー表示](../../TheSkyBlessing/data/player_manager/functions/mp/viewer/adjust_xpbar.mcfunction) は、一時的にレベル40・0ポイントへ設定し、[check_xpbar](../../TheSkyBlessing/data/player_manager/functions/mp/viewer/check_xpbar.mcfunction) が求めたMP比率の整数百分率pを2pポイントへ変換する。Minecraft 1.20.4でレベル40から次へ進むには202ポイントが必要なので、p=100でも200ポイントとなり、レベルが繰り上がらない。その後に整数部分の表示をMP/10レベルへ設定する。コメントの「最大201point」は、レベル40のまま保持できるポイントの上限として読む。 `check_xpbar` の0以外へ `+10` → `/10` という補正は、分母202による目減りを補い、p=0〜100で元の百分率を復元する。レベル40やポイント倍率を変えるときは、この補正も一緒に見直す。

表示の差分判定では、内部値と表示値を同じ単位・丸めで比較する。`check_xpbar` はMPを10で整数除算した表示レベルとXPレベルを比較し、百分率も一致している場合だけ再調整を省く。MPが10で割り切れない場合も `adjust_xpbar` と同じ丸めを使う。修正前の [実測と再現手順](../verification/mp-xpbar-and-grave.md) は検証記録にある。

整数値をコマンドで指定できる固定量の加算へ変換する場合は、ビットごとに重みを加える構成が使える。ポイント・レベルを足す定数列は、そのためにscoreの32bit整数オーバーフローを利用したビット抽出である。2倍するたびに次のビットを符号の位置へ送り、負なら対応する量を `xp add` する。ポイント側は最初の倍率と128からの加算列の組み合わせで2pを作り、レベル側は11bitを取り出す。異常な乗算や重複した加算ではない。値域や表示精度を変えるときは抽出するビットと加算する定数を一緒に見直す。現行列の対応は算術で照合済みで、画面表示の実機確認とは区別する。

[クールダウンの文字生成](../../TheSkyBlessing/data/asset_manager/functions/artifact/cooldown/main_bar/construct_message.m.mcfunction) は、段階へ1000を足した十進の文字列を `\u$(Value)` に埋め込む。JSONはこれを十六進のコードポイントとして読むため、段階10はU+1010となり、U+100Aではない。段階やフォントを増やすときは、この対応を通常の連番へ直さない。

完了後もしばらく表示を残す場合は、発動可能になる境界と表示を消す境界を分ける。

[cooldownの減算](../../TheSkyBlessing/data/asset_manager/functions/artifact/cooldown/decrement/local/foreach.mcfunction) は0を過ぎても-15まで進み、[mini barの正規化](../../TheSkyBlessing/data/asset_manager/functions/artifact/cooldown/mini_bar/normalize_cds.mcfunction) は-14〜-1を0相当に扱う。完了したバーをしばらく残すための期間である（ユーザー確認済み）。発動可能になる時点と、バーを消す時点を同一視して0で打ち切らない。

テキストの空白は通常のスペースとは限らない。リソースパックの [space.json](https://github.com/ProjectTSB/TSB-ResourcePack/blob/main/assets/minecraft/font/space.json) はspace providerのadvancesを定義し、`font:"space"` のU+0002は幅2を進める固定幅の空白である。負の幅の文字も別に定義されている。表示の位置合わせに用いるため、制御文字に見えることだけを理由に削除・通常の空白へ置換しない。

[actionbar](../../TheSkyBlessing/data/player_manager/functions/actionbar/.mcfunction) はplayer/postで個人の `Message.MiniBars/MainBar/Effect` をまとめて出し、Messageを削除する。Messageは表示用の一時データであり、次のtickにも残る通知ではない。独自に `title ... actionbar` を出す場合、この共通出力との順序で上書きされるため、表示を独立に保持できる前提にしない。新規機能から内部のMessageへ書く場合も、まず宣言元の公開範囲を確認する。

## 変更手順

loadを変える場合は、まず `data/minecraft/tags/functions/load.json` から `core:load` への入口を確認する。`load.mcfunction` は毎回 `IsProduction` を設定した後、開発時は毎reloadで `load_once` を呼ぶ。`load_once` にはobjective作成、forceload、固定UUID entityのsummonなどがあるため、名前だけを根拠に「ワールド生涯で一度」と解釈しない。FirstJoinEventを削除・再作成し、開発reload時に初回参加処理を再実行することも意図した動作である（ユーザー確認済み）。UserID等の再初期化を許容する開発用の動作なので、reload前後で同じ個体識別や初期化状態が維持される前提の検証にしない。registry追加は `core:load` 内のartifact/mob load順と、各asset manager側のtag呼出しを両方確認する。

tickを変える場合は `data/minecraft/tags/functions/tick.json` → `data/core/functions/tick/.mcfunction` → 対象関数の順で追う。プレイヤーイベントは `execute as @a at @s` で `player/pre`、`player/`、`player/post` が呼ばれる。MobやObjectは別のselectorと `as/at` で呼ばれるため、プレイヤー用関数を移すと実行者が変わる。tick途中で `asset_manager:common/reset_all_context` が2回呼ばれるが、削除対象は`New`、`Old`、`id`、`Items`、`Inventory`だけである。`this`、`originID`、各stash stackを含むstorage全体のresetではないため、対象 lifecycle の個別cleanupと [contextの詳細](asset-runtime.md#context-の-stack-と限界) を確認する。

advancement eventでは、例えば `data/core/advancements/handler/attack.json`、`data/core/functions/tick/player/.mcfunction` の判定、`data/core/functions/handler/attack.mcfunction` のrevokeと転送を一組で確認する。handlerを追加するだけでは発火しない。Mob/Object の dispatch にある schedule／clear は、[実装の存在検出](asset-runtime.md#virtual-dispatch-と-super) に使われる。これを再入防止や遅延実行の仕組みと解釈しない。処理を実際に遅延実行する schedule は、その呼出元と停止条件を別途確認する。
