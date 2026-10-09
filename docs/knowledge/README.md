# TheSkyBlessing 開発ナレッジ

現行コード、PRレビュー、ProjectTSB Wiki を照合した作業案内。レビューの提案、Wiki の設計意図、現行コードの挙動を区別する。

共通の開発規約・知識の更新方針はDevSpaceの `AGENTS.md` と `docs/knowledge-maintenance.md` にある。このディレクトリは、この作業コピーのコードに対応する構造・契約・実例を管理する。

## 読む文書を選ぶ

領域文書とノートの一覧・用途は、DevSpaceで次を実行して得るINDEXから選ぶ。INDEXのファイルや手書きの一覧は保存せず、この作業コピーのブランチのヘッダーから毎回生成する。

```sh
python3 scripts/knowledge/index.py <この作業コピー>
```

領域を絞るときは `--area <領域>`、ノートだけを見るときは `--notes-only` を付ける。スクリプトを使えない場合は、`docs/knowledge/*.md` と `docs/knowledge/notes/**/*.md` の先頭にある `title`・`description` を直接読む。ノートの形式、参照経路、機械的な検査、人がマージする範囲はDevSpaceの `docs/knowledge-notes.md` に従う。

領域文書は領域の全体像と入口、`notes/` 配下のノートは個別の判断（根拠・適用条件・適用外）を扱う。該当が見つからないときは領域を広げてINDEXを読み直し、コードと呼出元の実装を確認してから知識の有無を判断する。

## 先に読む領域

- 機能をどの仕組みに載せるか、領域間の責務と状態の持ち主を決めるときは [architecture.md](architecture.md) から入る。
- APIを呼ぶ・追加するときは [api-and-storage.md](api-and-storage.md) で呼出契約と公開範囲を確認する。本体はAPI契約の正本であり、Asset側の利用例と区別する。
- Mob／Object／Effectのdispatchと保存データを追うときは [asset-runtime.md](asset-runtime.md) を先に読む。
- NBT・数値・selector・移動・幾何・displayの共通イディオムはDevSpaceの `docs/mcfunction-idioms.md` を用途から参照する。

## このrepoの前提

データパック本体はrepo内の `TheSkyBlessing/data/` にある。repo直下の `data/` と取り違えない。

対象範囲は2026-09-15時点のローカルcheckout、GitHub PR一覧の直近30件、ProjectTSB Wiki snapshot。古い仕様は必要に応じてPR本文と現行コードを再確認する。
