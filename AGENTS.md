# 作業規約

## 作業に必要な知識を選ぶ

実装・レビュー・不具合調査では、ユーザーから読むよう指示されなくても、依頼内容と対象コードから関連領域を判断し、`docs/knowledge/README.md` と下記の対応表から必要な文書を選んで読む。文書を選ぶための許可や、ユーザーによるファイル名の指定は不要である。

- 対象領域の設計・修正・レビューを判断する前に、該当文書の本文を読み、そこで示された契約を現行コードと照合する。リンクや見出しを見ただけで読み込み済みとしない。
- 調査中に依存領域や対象 repo が増えたら、追加領域の入口と必要な未読文書も読む。同一セッションで読んだ文書は、更新やブランチ変更がなければ繰り返し全文を読む必要はない。
- 読み取り専用の依頼にも参照規約を適用するが、編集禁止は維持する。

## 実装規約

- この repo のデータパック本体は `TheSkyBlessing/data/` にある。検索・コード参照は repo 直下の `data/` と取り違えない。
- 対象は Minecraft データパックです。関数の実行主体（`as`/`at`）と実行順を保ったまま変更する。
- 公開APIは `TheSkyBlessing/data/api/functions/` に置き、内部実装は対象APIのcoreや対応するmanager・lib等の既存責務に合わせる。APIを追加・変更するときは引数・storage・scoreboard・戻り値をIMP Docコメントに明記する。
- 機能追加・領域をまたぐ変更では、定義、個体状態、snapshot、寄与と導出値、イベント、作業contextを区別し、状態の所有者と既存の拡張点を特定する。namespace名だけで変更先を決めない。
- 一時値は既存の `Argument` storage または `Temporary` objective の命名と後片付けを確認する。呼出元が結果を読む契約の場合はReturn相当のstorage/scoreを消さず、IMP Docと既存呼出側を根拠に寿命を決める。
- ロード処理は `TheSkyBlessing/data/core/functions/load.mcfunction`、tick処理は `TheSkyBlessing/data/core/functions/tick/.mcfunction` の全順序を起点に辿り、pre/postや4tickだけに還元しない。直接tagへ登録せず既存の入口を使う。
- Mob/Object/Effectのasset変更は、`asset:context this`を永続Fieldの作業窓として扱い、register、ROM継承graph、aliasまたはtag dispatch、OhMyDatへの保存までを一続きで確認する。abstract/extendsの検査は診断であり実行を停止しない。
- `*.m.mcfunction` はmacro構文を使う関数、`*.d.mcfunction` はdeclare記述であり、拡張子だけで生成物とは判断しない。対象ファイルの参照元と可視性（`# @public`/`# @within`）を確認する。
- 生成物の変更は生成元と生成手順を確認し、生成結果の手編集だけで済ませない。外部Asset連携は参照元と呼出契約を確認し、生成・同期の対象かは該当スクリプトから判断する。
- `TheSkyBlessing/data/rom`、NaturalMergeSort、OhMyDat、PlayerMotion、ScoreToHealthはライセンスと責務を尊重する。
- デバッグ関数は本番経路へ接続しない。不可逆なproduction設定（`global.IsProduction`）を不用意に変更しない。
- 既存のローカル変更を保持し、無関係な整形・削除を行わない。
- ProjectTSB Wiki は命名・作成方針などの設計意図の根拠として使う。ただし旧テンプレートのパス、API の引数・戻り値、load/dispatch/cleanup の実行保証は現行コードを優先し、`docs/knowledge/wiki-crosscheck.md` の採否を確認する。

## 対象領域と必読文書

以下は変更だけでなく、その領域のレビュー・調査にも適用する。

- 実装・レビュー・調査共通: `docs/knowledge/README.md` と該当領域の文書。
- 機能追加・領域間の責務や状態の変更: `docs/knowledge/architecture.md`。
- Island・Teleporter・Trader・Container、Nexus の構築判定の変更: `docs/knowledge/world-components.md`。
- Item生成・inventory・墓やLostItems・Mob初期化や追加当たり判定・幾何判定や移動・ROM利用の変更: `docs/knowledge/runtime-components.md`。
- API変更: `docs/knowledge/api-and-storage.md`。
- tick/load変更: `docs/knowledge/runtime-and-assets.md`。
- Mob/Object/Effectのasset実行モデル変更: `docs/knowledge/asset-runtime.md`。
- Wiki由来の作成規約・旧仕様との差を扱う変更: `docs/knowledge/wiki-crosscheck.md`。
- CI・宣言・生成物変更: `docs/knowledge/ci-and-generation.md`。

## 作業中の学びを残す

- 実装、レビューのみの作業、不具合調査、ユーザーからの訂正で、次の実装・レビューに使える知見を得たら、別途「記録して」と頼まれるのを待たず、その作業内で対象の `docs/knowledge/` と `sources.md` を更新する。
- 記録には適用範囲、誤実装・見落としにつながる前提、正しい扱い、根拠のコード／PR等、確認方法と実施範囲を残す。ユーザーの開発方針、現行コードの事実、未確定の提案を区別する。推測を確定規約へ昇格させない。
- 既存の誤記は元の説明と関連文書を訂正する。同じ注意を追記し続けず、次に読む入口から正しい説明へ到達できるようにする。恒常規約なら AGENTS.md、新しい領域なら README の案内も更新する。
- 完了報告の前に、再利用できる発見・訂正の記録漏れ、既存文書との矛盾、根拠リンクを確認する。報告には更新先を短く示す。更新不要なら新規知見がなかった等の理由を一言添える。記録のためだけに知見や未確認事項を作らない。
- 明示的に読み取り専用・ファイル変更禁止を指定された作業では編集せず、残すべき知見と記録先を報告する。記録はこの repo の変更として扱い、commit／push の権限を拡張しない。対象やブランチを変更した後は必読文書を再確認する。
