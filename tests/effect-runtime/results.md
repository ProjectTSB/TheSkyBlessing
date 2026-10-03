# Effect 検証結果

最新の機能・性能検証は[一括保存による検索回数の削減](#一括保存による検索回数の削減2026-10-03)を参照。

## 初期検証（2026-09-21）

初期検証では機能シナリオ **36 / 36 step 成功**。最終実行は `run-d92qw3lo`。自己削除、未処理・処理済み・別付与先の削除、再付与との順序、継承、getter の転送、終了 callback、通常 core tick、表示用 storage を確認した。前提・入力・期待値は [scenario.json](scenario.json)、実行方法と対象範囲は [README.md](README.md) にある。

Minecraft 1.20.4、Java 17、最大 heap 4G。DevSpace 共通 runner が隔離 world と明示 fixture を作成した。実ゲームの通常ログイン、実ダメージ、牛乳を飲む操作、画面の描画は未検証。牛乳・死亡は対応するフラグを入力した。GitHub CI / datapack-linter は未実行。Minecraft による関数読み込みと実行、参照先の静的確認、`git diff --check` を実施した。

## 性能比較

基準は HEAD `5d6799ed16578e8c6a7c61593bcf3d0ef22c1ff1`。比較シナリオは [benchmark.json](benchmark.json)（129 step）。1 / 20 付与先、各 1 / 5 / 10 / 20 Effect、処理本体が空の callback を用いた。各条件で 1000 owner-tick（付与先一体の Effect 管理処理一回を1 owner-tickとする）のウォームアップ後、1000 owner-tick のバッチを3回計測した。20付与先では各50回、1付与先では1000回の manager 実行に相当する。全件の反復完了数と先頭の Effectの残り Duration を照合した。

値は `debug stop` が返したプロファイル区間の秒数の中央値。runner の待機、背景 tick、プロファイラの費用を含む。**通常ゲームの MSPT、Effect 一個の純粋な費用、サーバー収容数ではない。** 1 / 20 付与先とも総 owner-tick 数を揃えたバッチ比較であり、負荷の20倍化を測っていない。

| 付与先数 | 付与先あたり Effect 数 | 基準（秒） | 初期実装（秒） | 最終実装（秒） | 最終 / 基準 |
| --- | --- | --- | --- | --- | --- |
| 1 | 1 | 0.65 | 0.73 | 0.72 | 1.11× |
| 1 | 5 | 0.79 | 0.93 | 0.88 | 1.11× |
| 1 | 10 | 1.02 | 2.74 | 2.04 | 2.00× |
| 1 | 20 | 1.53 | 4.82 | 3.96 | 2.59× |
| 20 | 1 | 0.65 | 0.65 | 0.64 | 0.98× |
| 20 | 5 | 0.84 | 1.08 | 0.94 | 1.12× |
| 20 | 10 | 1.03 | 2.56 | 2.32 | 2.25× |
| 20 | 20 | 1.49 | 5.03 | 4.01 | 2.69× |

初期実装から、callback 前の不要な書き戻しと、継続する Effect の終了判定のためだけの再検索を省いた。10要素でも基準の約2倍の時間が残る。ID 条件探索は O(N²) だが、上記は NBT コピー、pointer 取得、macro 等を含む合計であり、探索だけに増加原因を帰属していない。「高々10要素だから費用は無視できる」とは判定できない。機能を試す実装として成立しているが、本番の許容性は実際の付与先数・Effect 本体を含めて評価する必要がある。

各サンプルと scenario hash は [measurements.json](measurements.json)。基準 `run-yw_xzsy5`、初期実装 `run-al7d_vjd`、最終実装 `run-2ubpd3uh` はすべて129 step 成功。

## 失敗・再試行・終了確認

全実行の入力、出力、保存された patch / hash、server log、終了記録は DevSpace の `.runtime/verification-runs/<run ID>/` に残した。失敗結果は上書きしていない。`run.py` の隔離コピーも `.worktrees/` に保持した。

| run ID | 結果 | 原因・対応／確認内容 |
| --- | --- | --- |
| `run-gczdfg0t` | 1 step 目で失敗 | fixture の NBT 判定が `Log[0]{...}` で不正、かつ `say` による PASS が RCON 応答に出なかった。Probe へ要素をコピーし、Check storage の読み出しで判定する方式へ修正。実行中 repo 不変の判定も false のため合格の根拠にしない。 |
| `run-3b1kh837` | 5 step 目で失敗 | remove が対象を末尾へ append する既存仕様を期待順に反映していなかった。次 tick の保存順 B→A に合わせて期待値を訂正。 |
| `run-05_s4ex4` | 25 step 成功 | 上記修正後の機能シナリオ。後続で範囲を拡充。 |
| `run-y_5izfjx` | 34 step 目で失敗 | 通常 core tick の fixture が armor stand だったため `#lib:living` の対象外。core tick 用だけ初期化済みの cow へ変更。 |
| `run-eiir2415` | 35 step 成功 | core tick と protocol player の表示用 storage を含む拡充後。 |
| `run-x7rrkrwc` | 33 step 成功、計時は不採用 | `debug start` 直後の RCON バッチが profiling 区間外となり 0.00 秒等を返した。profiling を先の tick で開始し、バッチを次 tick に schedule する方式へ変更。費用がゼロという根拠にはしない。 |
| `run-al7d_vjd` | 129 step 成功 | 修正した計時方法で初期実装を測定。 |
| `run-yw_xzsy5` | 129 step 成功 | 同じシナリオで基準 HEAD を測定。 |
| `run-2ubpd3uh` | 129 step 成功 | 不要な書き戻し・検索を省いた最終実装を測定。 |
| `run-d92qw3lo` | 36 step 成功 | 最終実装で機能を再確認。転送先 getter の context の書き戻し・読み直しも追加。 |

全試行で `stop` による終了、server exit code 0、全 dimension 保存を確認した。初回以外は runner が実行中 repo 不変を確認した。最終機能・性能実行の実装ファイルは対応する保存 hash と照合可能。失敗時も正常終了しており、中断した server は残していない。

検証 pack は隔離コピー内だけで Effect dispatch tag を置換する。検証用の `maxCommandChainLength` 引き上げと各初期化コマンドは disposable world に適用し、通常 world / production 設定は変更していない。元 checkout の branch / index を切り替えず、コミット・push はしていない。

## コメント・可読性の確認（2026-09-23）

関数の前提、状態の受け渡し、Revision によるイベントを呼び出す時点、終了順序をコメントへ補い、処理単位の空行と4スペースのインデントを揃えた。fixture と runner にも準備・記録・計測の役割を追記した。

この編集の直前と直後を比較し、mcfunction のコメントと行頭の空白を除くコマンド列・順序、Python の構文木、NBT schema、IMP Doc の可視性指定と declare 行が不変であることを確認した。`git diff --check` も成功。今回の変更では実サーバー検証を再実行していない。上記36 step と性能値は9月21日の実行結果であり、コメント編集後のファイル hash は当時の hash と異なる。

用語の見直しでは、付与先・付与中の Effect・保存データ・作業データ・更新番号・処理予定・削除予約を区別した。関数名が `.mcfunction` のファイルも含めて94関数を比較し、コメント整理前および用語修正前からコマンド列・実行順・可視性・declare が不変であることを確認した。シナリオの入力・期待値、NBT schema、runner の Python 構文木も変更していない。

## 内部の公開範囲の確認（2026-09-23）

Effect の補助関数10件の `@within` を、具体的な呼出元の一覧へ変更した。before_api は callback の指定元と `with_idempotent.m` の実行箇所も対象にした。タグ・一時スコア6件は使用箇所に合わせて宣言ブロックを分けた。

本体の mcfunction を検索し、直接参照・CB 指定・自己再帰が宣言の範囲と一致すること、対象タグ・スコアの参照が許可範囲内であることを静的に確認した。共有 storage の宣言は変更せず、補助関数は変更前後とも workflow の Asset 向け `VISIBILITY_FILTER` の対象外。生成処理・push は実行していない。

実行コマンド列と順序は編集前と一致し、`git diff --check` も成功。今回は IMP Doc の範囲変更のため実サーバー検証は再実行していない。CI / datapack-linter は未実行であり、静的な参照照合の結果と区別する。

## 差分の再評価（2026-10-03）

Issue #1673 の本文・コメント、HEAD `bf9467016` からの未コミット差分、API と Effect manager の呼出経路を照合した。保存先に Effects を残すこと、ID/Revision による処理予定、API 前後の context 同期、終了前のデータ削除は整合しており、今回の確認範囲で動作の追加修正を要する不具合は見つからなかった。Revision は再付与の配送時点を揃えるための仕組みで、削除だけの最小修正より変更範囲は広い。上記の性能増加は残る評価事項であり、本番負荷の許容性を確認済みとはしない。今回は性能測定を再実行していない。

`display/` のコメントだけ訂正した。array session は外側の作業状態を退避しないため、別の session が開いていないことを呼出前提として明記した。実行コマンド・順序は変更していない。この制約は `docs/knowledge/architecture.md`「共通部品には利用区間がある」に説明済みのため、ナレッジ本文への重複追記は行わなかった。

既存の36 stepを共通 runner で再実行した。通常のworld・設定は変更せず、TheSkyBlessing は各回の隔離コピー、依存先は DevSpace 直下の Asset / Asset-AnimatedJava を使用した。

| run ID | 結果 | 観測・終了状態 |
| --- | --- | --- |
| `run-6dyuxxr6` | テスト開始前に失敗 | 初期化後の RCON 応答待ちで `TimeoutError`。step は未実行。stop後に保存完了を確認できず、runner が TERM / KILL で終了（exit -9）。原因は特定していない。機能の合否判定には使わない。 |
| `run-9hxebsna` | 36 / 36 step 成功 | 先行試行を retry-of に指定し、シナリオ・実装・設定を変えず再実行。stopで正常終了（exit 0）、全dimension保存、参照repoのコード不変を確認。 |

変更されたJSON 9ファイルの構文、本体の変更関数からの固定function参照40箇所、`git diff --check HEAD` も成功。コメント訂正後の全本体mcfunctionについて、成功した隔離コピーとの実行コマンド列・順序の一致を確認した。server logに関数読込エラーはなかった。GitHub CI / datapack-linter、通常ログイン、実ダメージ、画面描画は今回も検証対象外。branch・indexは維持し、commit / pushは行っていない。

## シナリオの重複整理（2026-10-03）

機能シナリオは入力と期待条件を明記し、PASS/FAILの報告コマンドを共通化した。性能シナリオは8条件と各3回の期待Durationを表にし、同じ実行手順を展開する。展開結果を整理前のcommit `c133f218d` と比較し、機能36 step・110判定、性能129 stepのコマンド・順序・期待値・待機tick数を含むJSON全体の一致を確認した。

整理後の `python3 tests/effect-runtime/run.py` は `run-lfcgqm2m` で36 / 36 step成功。stopで正常終了（exit 0）、全dimension保存、参照repoのコード不変を確認した。TheSkyBlessingは隔離コピー、依存先はDevSpace直下のAsset / Asset-AnimatedJavaを使用し、展開済みJSONと実行記録を保存した。性能測定は再実行していない。

## コメントの文章校正

Effect manager、API、検証fixture、runnerのコメントを読み直し、操作対象や保存先が曖昧な説明を具体化した。yomiyasuのlintと文章の差分確認を実施した。commit `616321800` と比較し、実行コマンドの内容と順序、Pythonの構文木、NBT定義、IMP Docの公開範囲・宣言・インデントが変わっていないことを確認した。`git diff --check`も成功。コメントだけの変更のため、実サーバー検証は再実行していない。

## 一括保存による検索回数の削減（2026-10-03）

取得した Effect 全体を Current.Data に保持し、Duration・Stack・Field を反映して一括保存する方式へ変更した。API を呼ばず終了もしない通常処理では、保存先の配列検索を1 Effect あたり8回から3回へ減らした。API 前には保存し、give/remove 後には全体を読み直す。ID/Revision の存在確認と削除予約の保持は継続する。

機能シナリオは `run-r3me567_` で36 / 36 step・110判定に成功した。自己削除、再付与の予約と PreviousField、API 後の context、別付与先、終了イベント等の既存条件を再確認した。検証シナリオと fixture の追加・変更はない。

性能は変更前の commit `285dcdd1d` を `--baseline` で実行した `run-m4frb797` と、未コミットの一括保存版を実行した `run-7_l425vf` を比較した。両方とも129 step成功。各条件1000 owner-tick、ウォームアップ後3回の中央値で、単位は秒。シナリオのSHA-256も一致する。比較対象はPR内の変更前後であり、PR導入前の旧foreachとの比較ではない。

| 付与先数 | Effect数 / 付与先 | 変更前（秒） | 一括保存（秒） | 一括保存 / 変更前 |
| --- | --- | --- | --- | --- |
| 1 | 1 | 0.76 | 0.86 | 1.13× |
| 1 | 5 | 1.10 | 1.07 | 0.97× |
| 1 | 10 | 2.67 | 2.25 | 0.84× |
| 1 | 20 | 5.28 | 3.81 | 0.72× |
| 20 | 1 | 0.80 | 0.78 | 0.97× |
| 20 | 5 | 1.18 | 1.11 | 0.94× |
| 20 | 10 | 2.76 | 2.34 | 0.85× |
| 20 | 20 | 5.26 | 4.09 | 0.78× |

10 Effect では約15〜16%、20 Effect では約22〜28%短縮した。1 Effect の条件では一律の改善は見られない。検索回数の削減率を実行時間の削減率とは扱わない。空のイベント本体、NBT コピー、pointer 取得、macro、プロファイラ、runner の待機を含む測定であり、ゲームのMSPTや本番負荷の許容性を示す値ではない。探索量は引き続き O(N²)。全サンプルは [measurements.json](measurements.json) の `cacheComparison` に保存した。

3回の実行とも、TheSkyBlessing は隔離コピー、依存先は DevSpace 直下の Asset / Asset-AnimatedJava を参照した。stop で正常終了（exit 0）、全dimension保存、参照コードの不変、関数読込エラーなしを確認した。入力・patch・hash・ログは各runの実行記録に残した。コメントと説明文には yomiyasu の lint を実施した。

## Effectごとの更新番号への変更（2026-10-03）

付与先の採番用データを削除し、同じIDの既存EffectのRevisionに1を足す方式へ変更した。新規付与は1、旧データの未設定値は0として扱う。既存シナリオの期待値に、自己再付与・未処理の別Effectへの再付与でRevisionが2になることと、終了イベントからの新規付与で1に戻ることを追加した。

`python3 tests/effect-runtime/run.py --baseline` を実行し、`run-9kire_29` で38 / 38 step・118判定に成功した。本体はcommit `044e5c453` の隔離コピーを使用し、未コミットのループ変更案は含めていない。入力には既存36 stepに加え、ローカルの検討用シナリオからEffects未設定・空配列の2 stepを含む。採番変更によるシナリオの追加はなく、既存3条件を更新した。

依存先はDevSpace直下のAsset / Asset-AnimatedJava。stopで正常終了（exit 0）、全dimension保存、参照コードの不変を確認した。性能測定は行っていない。Revisionの照合範囲と、終了後の新規付与で番号を戻せる条件は `docs/knowledge/asset-runtime.md` に記録した。

## 反転した処理予定を末尾から取り出す案（2026-10-03・検証時は未コミット）

Effects全体をSnapshotSourceへコピーし、末尾からID/RevisionだけをTickQueueへ移して逆順にする。foreachは予定の末尾を取り出してから処理するため、元の付与順を保つ。SnapshotSourceはイベント前に破棄し、保存先のEffectsは残す。添字・件数スコアとIteratorを削除し、macro引数が不要になったforeachは通常の関数名へ戻した。

`python3 tests/effect-runtime/run.py` は `run-4snp83zr` で38 / 38 step・120判定に成功した。未設定・空のEffects、削除・再付与、終了時の新規付与、旧Revisionの補完を含む。先行する空入力の2ケースには、反転用コピーの破棄も期待条件として追加した。比較元はcommit `8b6664420`。変更前の未コミット案はローカルに退避し、HEADとindexは変更していない。

TheSkyBlessingは隔離コピー、依存先はDevSpace直下のAsset / Asset-AnimatedJavaを使用した。stopで正常終了（exit 0）、全dimension保存、参照コードの不変を確認した。固定function参照48箇所と `git diff --check` も確認した。性能測定は行っておらず、全Effectのコピーによる時間・メモリへの影響は未評価。文書とコメントにはyomiyasuのlintを実施した。検証時点では、実装・関連ナレッジ・検証結果を比較用の未コミット差分として保持した。

## 添字方式とpop方式の性能比較（2026-10-03・検証時は未コミット）

添字方式はHEAD `8b6664420` を `python3 tests/effect-runtime/run.py --scenario benchmark.json --baseline` で実行した `run-lvc_x6ye`、pop方式は作業中の差分を同じコマンドの `--baseline` なしで実行した `run-mpseiglc`。両方とも129 / 129 step成功し、入力シナリオのSHA-256も一致した。各条件1000 owner-tick、ウォームアップ後3回の中央値を比較した。単位は秒。

| 付与先数 | Effect数 / 付与先 | 添字方式 | pop方式 | pop / 添字 |
| --- | --- | --- | --- | --- |
| 1 | 1 | 0.74 | 0.89 | 1.20× |
| 1 | 5 | 1.11 | 1.13 | 1.02× |
| 1 | 10 | 1.97 | 2.01 | 1.02× |
| 1 | 20 | 3.57 | 3.32 | 0.93× |
| 20 | 1 | 0.68 | 0.70 | 1.03× |
| 20 | 5 | 1.00 | 1.04 | 1.04× |
| 20 | 10 | 1.95 | 2.07 | 1.06× |
| 20 | 20 | 3.45 | 3.39 | 0.98× |

この測定では、pop方式は20 Effectで約2〜7%短く、1〜10 Effectでは約2〜20%長かった。各回のばらつきがあり、今回の測定だけで一律の速度優位や同等性を断定しない。全サンプルを [measurements.json](measurements.json) の `loopComparison` に保存した。

Fieldは空で、イベント本体も省いた条件である。大きなFieldをコピーする負担は評価していない。プロファイラ・runner待機・背景のcore tickも含み、ゲームのMSPTを示す値ではない。コードの読みやすさでは、pop方式は添字・件数・Iteratorの管理を省ける一方、イベント前に全Effectをコピーする。速度改善を前提にせず、この違いを採用判断に使う。

TheSkyBlessingは各回の隔離コピー、依存先はDevSpace直下のAsset / Asset-AnimatedJavaを使用した。両方ともstopで正常終了（exit 0）、全dimension保存、参照コードの不変を確認した。計測した未コミット差分は、各runの実行記録に保存した。

## Revision未設定への後方互換の削除（2026-10-03・検証時は未コミット）

Revision未設定の保存データを補完する契約を廃止した。snapshotでのID検索・Revision書込みと処理予定の既定値0を削除し、引数が不要になった関数を `snapshot.mcfunction` へ変更した。型定義のRevisionを必須とし、旧データ補完用のシナリオを削除した。新規付与はRevision=1、再付与は既存Revision+1とする処理を維持している。契約と呼出経路のナレッジも現行コードへ合わせた。

`python3 tests/effect-runtime/run.py` は `run-a1j8dbwu` で37 / 37 step・118判定に成功した。TheSkyBlessingは隔離コピー、依存先はDevSpace直下のAsset / Asset-AnimatedJavaを使用し、stopで正常終了（exit 0）、全dimension保存、参照コードの不変を確認した。固定function参照48箇所、文章のlint、`git diff --check HEAD` も確認した。性能測定は再実行しておらず、前節の測定は互換処理を含む変更前の実装に対する結果である。

この検証の完了時点では、開始時のstage済み差分を維持し、編集分はstage・commit・pushしていない。

コミット前に、実行した関数とシナリオが検証コピーに一致することを確認した。検証コピーにはstage済みの削除をrunnerが反映できず、旧名の `foreach.m.mcfunction` が残っていた。新しい呼出経路からは参照されておらず、本体全体にも旧名への参照がないことを確認した。
