# 調査根拠

コード固有の結論を辿る索引。共通規約・記録方針はDevSpaceの `AGENTS.md` と `docs/knowledge-maintenance.md` にある。以下の版・PR状態は確認時点の記録であり、現在のブランチへ適用するときはコードと照合する。

## 構造・契約の根拠

2026-09-15に本体 `f88cdd5bcb2216d24b26e48684f4a7951a686c94`、利用例のAsset `8f661ea1003a0e519d9825c55e1dde0ce6edaf80` で、定義・管理処理・呼出側を静的に照合した。「寄与」「構築レシピ」等は実装の関係を説明する用語であり、作者の発言の引用ではない。全namespace・全機能の網羅検証やゲーム内の実行検証ではない。

### 本体の抽象構造

結論と直接コードリンクは [architecture.md](architecture.md)。

| 確認した構造 | 主な根拠 |
| --- | --- |
| API の呼出フレームと初期化 callback | Mob summon と Spawner の PreInitInterceptFn 利用 |
| 保存状態、snapshot、装備の差分照合 | artifact/data/old・new、equipments/compare・filter・remove・add |
| 出典 ID を持つ寄与と能力値の再計算 | modifier/core/heal/add、common/update_modifier、装備 modifier の接続 |
| 行為と所有者別イベントの配送 | damage/core/health_subtract・trigger_events、Artifact/Mob の trigger と foreach |
| 防壁の所有、消費、表示 | absorption API/upsert、score_to_health_wrapper の absorb_damage、player_manager/absorption |
| 定義評価、DPR、個体構築、spawn 時の選択 | nexus_loader/try_load_asset、Spawner/Island construct、Spawner spawn |
| 共有作業領域の利用規約 | array/session/open・close、array/compare、ROM provide |

### World・Runtimeコンポーネント

結論と直接コードリンクは [world-components.md](world-components.md)、[runtime-components.md](runtime-components.md)。

| 対象 | 確認した入口と関係 |
| --- | --- |
| Nexus、Island | register→DPR→construct、解呪 phase、boss summon/watcher/remove、successful/callback |
| Teleporter | early_register、master 一覧、起動 version、group 追加、player snapshot、星、選択・移動 |
| Trader | Asset trader/1、TraderData、GameVersion と RecipeVersion、Offers 再生成、購入品 resolver |
| Container | register の形式例、loot 展開、Artifact seed 解決、人数補正、明示 Items、島報酬 loot |
| Artifact、inventory | Elemental Sword の give、生成・配送 API、DataCache、全 slot 復元、選択 slot、使用後更新 |
| 墓、LostItems | death、build、owner ID/世代、tick/break、package 化、配列 entry の移管と返却 |
| Mob、追加当たり判定 | generic/Asset init、循環 MobUUID、forward callback、適用集合と reset、health/Damage の利用差 |
| 幾何、散布、移動、ROM | bounding_fan/cylinder の Asset 利用、Musket Matchlock、位置差分と落下ダメージ、PlayerMotion 経路、ROM provide |

Island等の `2147483647` は形式例として確認した範囲。個別島callbackの本番実例や、緩衝体力APIの確認コードの実行を確認した記録ではない。

### Asset実行系と神器tick

[asset-runtime.md](asset-runtime.md) の根拠は、Mob/Object summon、register/extends、ROM、alias/method dispatch、contextのstash、OhMyDatへのField保存、Effectのgive・親map・固定event・foreach。Objectのschedule/clearは実装の存在検出、`call.m`は既存の個体contextを使うdispatchとして照合した。

[runtime-and-assets.md](runtime-and-assets.md#神器tickと死亡スペクテイター) の状態条件は2026-09-21に本体 `5d6799ed1` のcore/tick→player→artifact tick、DataCache、共通check、死亡handler→grave/build、エリア入場、respawn.delay、coreのタグ宣言を静的に照合した。実際の死亡・リスポーン操作の検証を意味しない。

## MP表示の整数演算の根拠

[MP・actionbar表示](runtime-and-assets.md#表示用の値へ変換してから共通の表示処理へ渡す) はcheck_xpbar・adjust_xpbar・player/post・actionbarを照合した。ポイント側は整数百分率0〜100を2倍のポイントへ、レベル側は0〜2047を元の整数へ復元することを符号付き32bit演算で確認した。レベル40の必要経験値202はMinecraft Java 1.20.4の公式server jarの `Player.getXpNeededForNextLevel` と [公式mappings](https://piston-data.mojang.com/v1/objects/c1cafe916dd8b58ed1fe0564fc8f786885224e62/server.txt) で確認。これは演算と版の照合であり、画面表示の実機検証ではない。

## Wiki・AJとの照合

2026-09-15にWiki snapshot `3a5ede8625a713382dca0e96f46b2a8ed75218c5` の公開16ページと `_Sidebar.md` を全文確認し、上記本体の版と照合した。ページ別の採否・直接URLは [wiki-crosscheck.md](wiki-crosscheck.md)。外部リンク先・添付画像自体は対象外。

AJ optional登録は `e48a116501b931a6688d5bd77e8f60c82de27ffa` の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json)、Karmicの対応関数とAsset側initを照合した範囲。

## PRレビューの根拠と採否

2026-09-14に上記本体の版と照合。PR一覧は全状態の直近30件、inline commentは3ページ・300件（104 PR、更新日2024-10-18〜2026-07-17）。全履歴の網羅調査ではない。取得記録はDevSpaceの `.runtime/knowledge-research/tsb/` にある。

|PR / 直接URL|コメントと差分|PR状態・現行対応|判定|
|---|---|---|---|
|[#2268 r3304623478](https://github.com/ProjectTSB/TheSkyBlessing/pull/2268#discussion_r3304623478)|共有 `api:Temp` をlistとしてappendし最後に全削除すると、他APIが残したCompoundと衝突する。Damage API専用subpathを `[]` で初期化し、そのsubpathだけ削除する提案。|PRはmerged。namespaceの `lib:`→`api:` と `ReduceEnchantmentID` の末尾削除は入った。一方、現行 `data/api/functions/damage/core/get_epf/get_non-protection_epf.mcfunction` は初期化行がコメントアウトされ、`data remove storage api: Temp` で全体を消す。|inline提案は未採用。共有一時storageを一律全削除しないという注意の根拠にだけ使う。|
|[#2174 r3325989624](https://github.com/ProjectTSB/TheSkyBlessing/pull/2174#discussion_r3325989624)|追加diffの `$HealthPer` は参照されずresetだけなので、宣言を削除する提案。|PRはmerged。現行 `data/api/functions/heal/_index.d.mcfunction` の同じ宣言範囲には `$OverHeal`、`$MaxHealth`、`$CurrentHealth` だけが残る。|採用済み。score holderを追加するとき宣言と参照を照合する根拠。|
|[#2278 r3418939178](https://github.com/ProjectTSB/TheSkyBlessing/pull/2278#discussion_r3418939178)|heal eventのfloat値をscoreへ変換する箇所で誤差が出るというthread。diffは格納型をfloatからdoubleへ変える。|PRはopen/unmerged。現行 `data/api/functions/heal/core/push_heal_events/from_healer/push.mcfunction` はfloat格納のまま。thread内にも型不整合への反対意見がある。|未確定。double化や丸め順の規約には採用しない。|

PRの状態・保存diff・確認時点のコードを分けて判定した。RESTのreview commentにはthreadのresolved状態がない。merge済みPRでも個々の提案の採用を意味しない。

補助根拠は [#2266](https://github.com/ProjectTSB/TheSkyBlessing/pull/2266) のScoreToHealth干渉中の最大体力、[#2261](https://github.com/ProjectTSB/TheSkyBlessing/pull/2261) のPlayerMotion.Api.Launchの定義範囲。CI・生成のコード根拠は `.github/workflows/datapack-linter.yml` と `.github/workflows/make-declares-mcf.ts`。open issues一覧は取得したが、この調査で確定した規約の根拠として採用したissueはない。
