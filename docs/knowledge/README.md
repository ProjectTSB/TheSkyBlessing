# TheSkyBlessing 開発ナレッジ

現行コード、PRレビュー、ProjectTSB Wiki を照合した作業案内。レビューの提案、Wiki の設計意図、現行コードの挙動を区別する。

| 目的 | 読む文書 |
|---|---|
| 機能をどの仕組みに載せるか・領域間の責務を判断する | [architecture.md](architecture.md) |
| Island・Teleporter・Trader・Container の状態と更新方式を追う | [world-components.md](world-components.md) |
| Item 生成・inventory・墓・Mob 転送・幾何や移動の部品を扱う | [runtime-components.md](runtime-components.md) |
| APIを呼ぶ・追加する | [api-and-storage.md](api-and-storage.md) |
| load/tick、assetを追う | [runtime-and-assets.md](runtime-and-assets.md) |
| Mob/Object/Effectの型・継承・Field・dispatchを追う | [asset-runtime.md](asset-runtime.md) |
| ProjectTSB Wiki の設計意図と現行実装の差を確認する | [wiki-crosscheck.md](wiki-crosscheck.md) |
| CI の役割、宣言、生成物を確認する | [ci-and-generation.md](ci-and-generation.md) |
| 根拠・調査範囲 | [sources.md](sources.md) |

対象範囲は2026-09-15時点のローカルcheckout、GitHub PR一覧の直近30件、ProjectTSB Wiki snapshot。古い仕様は必要に応じてPR本文と現行コードを再確認する。
