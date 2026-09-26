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

## 変更手順

loadを変える場合は、まず `data/minecraft/tags/functions/load.json` から `core:load` への入口を確認する。`load.mcfunction` は毎回 `IsProduction` を設定した後、開発時は毎reloadで `load_once` を呼ぶ。`load_once` にはobjective作成、forceload、固定UUID entityのsummonなどがあるため、名前だけを根拠に「ワールド生涯で一度」と解釈しない。registry追加は `core:load` 内のartifact/mob load順と、各asset manager側のtag呼出しを両方確認する。

tickを変える場合は `data/minecraft/tags/functions/tick.json` → `data/core/functions/tick/.mcfunction` → 対象関数の順で追う。プレイヤーイベントは `execute as @a at @s` で `player/pre`、`player/`、`player/post` が呼ばれる。MobやObjectは別のselectorと `as/at` で呼ばれるため、プレイヤー用関数を移すと実行者が変わる。tick途中で `asset_manager:common/reset_all_context` が2回呼ばれるが、削除対象は`New`、`Old`、`id`、`Items`、`Inventory`だけである。`this`、`originID`、各stash stackを含むstorage全体のresetではないため、対象 lifecycle の個別cleanupと [contextの詳細](asset-runtime.md#context-の-stack-と限界) を確認する。

advancement eventでは、例えば `data/core/advancements/handler/attack.json`、`data/core/functions/tick/player/.mcfunction` の判定、`data/core/functions/handler/attack.mcfunction` のrevokeと転送を一組で確認する。handlerを追加するだけでは発火しない。Mob/Object の dispatch にある schedule／clear は、[実装の存在検出](asset-runtime.md#virtual-dispatch-と-super) に使われる。これを再入防止や遅延実行の仕組みと解釈しない。処理を実際に遅延実行する schedule は、その呼出元と停止条件を別途確認する。
