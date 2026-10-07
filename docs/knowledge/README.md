# TheSkyBlessing 開発ナレッジ

現行コード、PRレビュー、ProjectTSB Wiki を照合した作業案内。レビューの提案、Wiki の設計意図、現行コードの挙動を区別する。

共通の開発規約・知識の更新方針はDevSpaceの `AGENTS.md` と `docs/knowledge-maintenance.md` にある。このディレクトリは、この作業コピーのコードに対応する構造・契約・実例を管理する。`sources.md` は結論の根拠・採用状況を確かめるための索引。

NBT・数値・selector・移動の共通イディオムはDevSpaceの `docs/mcfunction-idioms.md` を用途から参照する。以下はこのrepo固有の契約と利用例。

| 目的 | 読む文書 |
|---|---|
| 機能をどの仕組みに載せるか・領域間の責務を判断する | [architecture.md](architecture.md) |
| Island・Teleporter・Trader・Container・Nexus構築判定を追う | [world-components.md](world-components.md) |
| Item生成・inventory・墓・LostItems・Mob初期化/追加当たり判定・幾何や移動・ROMを扱う | [runtime-components.md](runtime-components.md) |
| APIを呼ぶ・追加する、libとapiの配置、攻撃属性を確認する | [api-and-storage.md](api-and-storage.md) |
| load/tick、asset、LCD・TCD・GCD、MP・actionbar表示を追う | [runtime-and-assets.md](runtime-and-assets.md) |
| Mob/Object/Effectの型・継承・Field・dispatchを追う | [asset-runtime.md](asset-runtime.md) |
| ProjectTSB Wiki の設計意図と現行実装の差を確認する | [wiki-crosscheck.md](wiki-crosscheck.md) |
| CI の役割、宣言、生成物を確認する | [ci-and-generation.md](ci-and-generation.md) |
| 根拠・調査範囲 | [sources.md](sources.md) |

データパック本体はrepo内の `TheSkyBlessing/data/` にある。repo直下の `data/` と取り違えない。

対象範囲は2026-09-15時点のローカルcheckout、GitHub PR一覧の直近30件、ProjectTSB Wiki snapshot。古い仕様は必要に応じてPR本文と現行コードを再確認する。
