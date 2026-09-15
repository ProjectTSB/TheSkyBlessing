# World コンポーネントの状態と更新境界

確認日: 2026-09-15。本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` の Island、Teleporter、Trader、Container を、定義・管理処理・利用側から確認した。[全体の抽象構造](architecture.md) を前提に、それぞれ何が状態を所有するかを整理する。

## 配置の共通入口と、異なる状態の所有者

[Nexus の種別振り分け](../../TheSkyBlessing/data/world_manager/functions/nexus_loader/load/fetch.m.mcfunction) と [定義評価・構築](../../TheSkyBlessing/data/world_manager/functions/nexus_loader/try_load_asset/m.mcfunction) は、Type と ID から register を評価し、定義の座標で manager の construct を呼ぶ共通入口である。

[DPR の確認と記録](../../TheSkyBlessing/data/world_manager/functions/nexus_loader/try_load_asset/check_and_put_dpr.m.mcfunction) は Type/ID に印を書き、その変更の成否を構築判定に使う。印は command storage `world_manager:nexus_loader DPR.<Type>.<ID>` に保存され、loader の呼出終了後も残る。現行コード内に削除経路はなく、構築前に立てた印を構築失敗時に戻す処理もない。これは同じ Type/ID の将来の構築を抑える印であり、生成個体の存在確認や unload の台帳ではない。定義の編集、既存個体の更新、再構築を同じ操作だと考えない。

| 対象 | 構築後の状態を持つ場所 | 主に変更するもの |
| --- | --- | --- |
| Island | 呪物個体の IslandData、score、tag | 解呪の進行とボス個体との関係 |
| Teleporter | 共通の Teleporters 一覧、選択中の player／星の snapshot | 接続・起動状態と選択操作 |
| Trader | villager の TraderData と Offers.Recipes | 保存した取引定義と現在表示する取引 |
| Container | block entity の Items | 構築時に確定する内容物 |

共通なのは配置までの入口である。構築後の変更や終了処理は、各領域の所有モデルから判断する。

## Island：解呪の進行とボス個体の関係

[定義の形式例](../../TheSkyBlessing/data/asset/functions/island/2147483647/register.mcfunction) は、呪物の配置と任意の BossID 等を渡す。[construct](../../TheSkyBlessing/data/asset_manager/functions/island/register/construct/.mcfunction) と [set_data](../../TheSkyBlessing/data/asset_manager/functions/island/register/construct/set_data.mcfunction) が、呪物の armor stand に IslandData と進行状態を作る。ここで管理している個体は、島の全 block をまとめたものではなく、解呪を進める呪物である。

識別子には役割の違いがある。Island の ID は定義・解呪 callback・対応する転移装置を結び、BossID は Mob の型を指定し、TargetBossID は召喚した特定の MobUUID を追う。型と個体の識別を混同すると、同型の別ボスまで監視対象になってしまう。

[解呪処理](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/.mcfunction) は祈願の継続や中断を扱い、ボスが必要な場合は [召喚開始](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/.mcfunction)、[召喚タスク](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/summoning_task.mcfunction)、[個体の関連付け](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/summon.mcfunction) へ進む。DispelPhase、tag、score が協調して状態遷移を表す。

[phase の宣言](../../TheSkyBlessing/data/asset_manager/functions/island/_index.d.mcfunction) と実処理では、0 は初回の解呪可能状態、1 はボス召喚を開始済み、2 は追跡ボスが見つからなくなった後の解呪可能状態、3 は解呪成功済みを表す。初回の召喚開始には祈願120 tick、phase 1 からの再召喚開始には30 tickを使う。

[watcher](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/watcher.mcfunction) は関連するボスの存在・位置・周囲のプレイヤーを監視する。[ボス不在](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/killed.mcfunction) なら phase 2 に進む一方、[周囲に対象 player がいない場合の除去](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/boss/remove.mcfunction) は関連付けを外して phase 1 を保ち、再祈願による早期再召喚につながる。これは対応ボスの lifecycle であり、島全体の unload 処理と同一視しない。

[成功処理](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/successful.mcfunction) は全体進捗、報酬、lost item の返却、対応 Teleporter の起動、完了状態、[島別 callback](../../TheSkyBlessing/data/asset_manager/functions/island/dispel/dispelled.m.mcfunction)、Trader の更新通知をつなぐ。個別の島で成功後に演出や配置を追加するなら、まず callback の境界を使う。全島共通の進捗や再評価通知を変えるなら成功処理が対象になる。callback は動的な関数呼出しであり、存在・成功を保証する検査はない。形式例と共通処理を読んだもので、個別の島 callback の本番実例を示したものではない。

## Teleporter：接続状態と選択中の状態

Teleporter の定義は二段階に分かれる。[early_register の形式例](../../TheSkyBlessing/data/asset/functions/teleporter/2147483647/early_register.mcfunction) と [一覧の初期化](../../TheSkyBlessing/data/asset_manager/functions/teleporter/early_register.mcfunction) が `core:load_once` で一覧を作り直し、ID・座標・dimension・GroupIDs・ActivationState 等を共通の Teleporters 一覧へ登録する。その後、Nexus 用の [register](../../TheSkyBlessing/data/asset/functions/teleporter/2147483647/register.mcfunction) と [construct](../../TheSkyBlessing/data/asset_manager/functions/teleporter/register/construct/.mcfunction) が設置個体を作る。

設置された entity は主に TeleporterData.ID を持ち、接続・起動状態は共通一覧から参照する。ActivationStateVersion は表示更新の検知に使われる。このため、設置個体の NBT だけを書き換えても、接続や起動の管理を変更したことにはならない。

GroupIDs は接続候補を集めるための所属リストである。[候補の抽出](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/summon_star/init/get_teleporters/from_group_id.m.mcfunction) は一致した destination を追加する。[group 追加 API](../../TheSkyBlessing/data/api/functions/teleporter/modify_groups/add.mcfunction) は append であり、重複排除や activation version 更新をしない。複数 group から同じ行き先が候補へ追加される場合もある。[起動状態変更 API](../../TheSkyBlessing/data/api/functions/teleporter/set_activation_state/from_id.mcfunction) は共通一覧と version を更新する。

[選択の初期化](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/summon_star/init/.mcfunction) と [setup](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/summon_star/init/setup.mcfunction) は候補を player の Temp.Teleporters へ取り出し、[星の set_data](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/summon_star/summon/set_data.mcfunction) が destination の位置・dimension・その時点の起動状態を TPStarData へ写す。[視線による選択](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/tp/find/recursive.mcfunction) と [移動](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/tp/move.m.mcfunction) は、この選択中の状態を使う。

したがって、接続規則は定義・group API、選択 UI は候補と星の生成、着地点の扱いは移動処理が変更先になる。起動状態や group の変更は、作成済みの player snapshot や星へ反映されない。共通一覧の更新を選択中の表示へ即時反映したい場合は、作成済み snapshot の更新・取消までを一つの変更として考える。

## Trader：保存した取引定義と現在のレシピ

[実定義の例](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/trader/1/register.mcfunction) は BuyA、BuyB、Sell、RequiredProgress 等を含む Trades を提供する。Artifact ID、vanilla item、PresetItem といった入力形式を [trades_map](../../TheSkyBlessing/data/asset_manager/functions/trader/common/trades_map/.mcfunction) が解決し、[recipe 更新](../../TheSkyBlessing/data/asset_manager/functions/trader/common/update_recipe.mcfunction) が進捗に応じた Offers.Recipes を作る。

[個体の set_data](../../TheSkyBlessing/data/asset_manager/functions/trader/register/construct/set_data.mcfunction) が保存する TraderData.Trades は定義の snapshot、villager の Offers.Recipes は現在の条件に対応した表示・取引用データである。

更新の境界を二つに分ける。

- [recipe 更新通知 API](../../TheSkyBlessing/data/api/functions/trader/schedule_recipe_update_check.mcfunction) は全体の TraderRecipeVersion を進める。[4 tick 処理](../../TheSkyBlessing/data/asset_manager/functions/trader/tick/4_interval.mcfunction) がこれを検知して recipe を再評価する。
- [定義の refresh](../../TheSkyBlessing/data/asset_manager/functions/trader/common/refresh_trades/m.mcfunction) は保存済み Version と GameVersion を使い、asset の register から Trades を読み直すか判断する。

進捗に応じて recipe を再評価することと、編集した定義を既存個体へ読み直すことは別である。同じ GameVersion では recipe 更新通知だけを送っても、保存済み Trades は読み直されない。価格・品目の変更ではこの違いを確認する。レシピの再構築は Offers の置換になるため、vanilla の uses 等を保持する更新として扱わない。

### Artifact の販売品は購入後に個体化する

[Artifact の販売用表現](../../TheSkyBlessing/data/asset_manager/functions/trader/common/trades_map/item_normalize/from_artifact.mcfunction) は、通常の生成個体とは異なる UUID と ArtifactBoughtFromTrader／BanPossession metadata を使う。購入後は [inventory の metadata 処理](../../TheSkyBlessing/data/core/functions/tick/check_item_meta/inventory.mcfunction)、[resolver](../../TheSkyBlessing/data/asset_manager/functions/trader/resolve_artifact/.mcfunction)、[正規個体の再発行](../../TheSkyBlessing/data/asset_manager/functions/trader/resolve_artifact/repeat_give.mcfunction) が動く。

ここは villager の取引 callback だけで完結せず、購入後の inventory を照合する境界である。同じ recipe から複数回購入できることと、生成個体の識別を両立させている。新しい販売品の表現は normalization、購入後の個体化は resolver、値段や進捗条件は Trades から変更先を探す。

## Container：構築用の指定を block の内容物へ変換する

[Container の形式例](../../TheSkyBlessing/data/asset/functions/container/2147483647/register.mcfunction) は、Block と LootTable または Items を提供する。[construct](../../TheSkyBlessing/data/asset_manager/functions/container/register/construct/.mcfunction) が物理 block と内容物を作り、その後の内容は block entity が保持する。

[LootTable の処理](../../TheSkyBlessing/data/asset_manager/functions/container/register/construct/set_loot_table/.mcfunction) は、構築時に loot を展開し、[Artifact の抽選](../../TheSkyBlessing/data/asset_manager/functions/container/register/construct/set_loot_table/roll_artifact.mcfunction) と [seed の置換](../../TheSkyBlessing/data/asset_manager/functions/container/register/construct/set_loot_table/replace_artifact.mcfunction) を行う。[人数による Count 補正](../../TheSkyBlessing/data/asset_manager/functions/container/register/construct/common/calculate_count_for_multiplayer.mcfunction) もこの時点で行う。[島の報酬 loot table](../../TheSkyBlessing/data/common/loot_tables/island_rewards/lv-1.json) は解釈対象の例である。

これは開封時まで抽選を保留するモデルではない。構築時点の乱数や人数から実 Items を確定し、manager が内容物の別コピーを保持して継続管理するわけでもない。[明示 Items](../../TheSkyBlessing/data/asset_manager/functions/container/register/construct/set_items/.mcfunction) も構築時に解決して配置する。

LootTable と Items は定義上は排他的に使う契約である。construct が両方を拒否する検査とは限らず、両方を書けば後続の Items 設定が結果を上書きし得る。新しい報酬確率は loot table、固定 slot 配置は Items、人数補正は manager が対象になる。開封時抽選へ仕様を変える場合は、構築時の確定と DPR の扱いも含めて変更を設計する。

## 実装・レビューの入口

1. 変更したいのは配置定義、保存した snapshot、導出した表示、進行中の session、実内容物のどれか。
2. その変更は新規 construct だけに効くのか、既存個体も更新する必要があるのか。
3. ID は型・配置・生成個体・所属 group のどれを識別するか。
4. 完了・再評価・取消・回収を誰が担当し、他コンポーネントへ何を通知するか。

これらを先に決め、共通の register という名前だけで更新方式を流用しない。
