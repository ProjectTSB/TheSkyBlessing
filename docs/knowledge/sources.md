# 調査根拠

## 2026-09-15: master への直接コミット禁止

ユーザーが Asset／TheSkyBlessing の `master` へコミットしない方針を指定した。[AGENTS.md](../../AGENTS.md) のコミット先に反映した。今回の開発環境・ナレッジのコミットは `chore/devspace-environment-and-knowledge` に保持し、ローカル master は作業前の位置へ戻した。今後もコミット前に現在のブランチを確認する。これはユーザーの運用方針であり、Git の機械的な保護設定を導入した記録ではない。

## 2026-09-15: 依頼内容からの自律的なナレッジ参照

ユーザーの方針として、普段の実装・レビュー・調査の依頼に、ナレッジを読む指示や文書名を追記する必要がない運用にする。[AGENTS.md](../../AGENTS.md) に、依頼と対象コードから必要な文書を選び、判断前に本文を読み、依存領域が増えたら参照も追加する手順を明記した。読み取り専用の依頼にも参照規約を適用し、編集禁止は維持する。

DevSpace・本体・Asset の3つの開始位置で `gpt-5.6-sol` / low の新規セッションを使い、読む指示・文書名・必読確認を含めない通常の調査／実装相談から関連本文への到達を確認した。修正前後とも各3件で参照できており、今回の修正による成功率の改善を示す結果ではない。指示の適用範囲を明確にし、自律参照の観測を追加した記録である。依頼文・読取ログ・確認結果は DevSpace の `docs/knowledge-verification.md` とローカル領域 `.runtime/knowledge-research/autonomous-reference/` に保存した。ゲーム内検証や実装課題の合否判定ではない。

## 2026-09-15: 他コンポーネントの状態・更新・受け渡し

本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94`、利用例の Asset HEAD `8f661ea1003a0e519d9825c55e1dde0ce6edaf80` で、定義・処理・利用側を `gpt-5.6-sol` / low で読解した。別セッションでも寿命・版管理・回収・転送の主要契約を照合し、[world-components.md](world-components.md) と [runtime-components.md](runtime-components.md) に記録した。

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

各文書に直接コード根拠と変更先の判断を併記した。DPR は呼出後も保存される構築抑止の印、Trader の recipe 更新と定義 refresh は別条件、墓の回収は現在品の package 化を伴う置換、ForwardTarget の重複抑制は特定経路・Key・reset 区間の保証として記録した。共通語から永続オブジェクト台帳、即時同期、merge、全経路の一度だけ実行を推定しない。

Island 等の `2147483647` は形式例として区別した。個別島 callback の本番実例を確認した記録ではない。コードの静的読解であり、これらの機能のゲーム内実行検証や全 namespace の網羅確認を追加したものではない。

## 2026-09-15: 本体各領域の抽象構造

本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` で、定義・管理処理・呼出側を往復して [architecture.md](architecture.md) を追加した。読解と別セッションでの主要契約の照合には `gpt-5.6-sol` / low を使用した。「寄与」「作業用の状態」「構築レシピ」等は実装上の関係を説明する概念であり、作者の用語として引用したものではない。

| 確認した構造 | 主な根拠 |
| --- | --- |
| API の呼出フレームと初期化 callback | Mob summon と Spawner の PreInitInterceptFn 利用 |
| 保存状態、snapshot、装備の差分照合 | artifact/data/old・new、equipments/compare・filter・remove・add |
| 出典 ID を持つ寄与と能力値の再計算 | modifier/core/heal/add、common/update_modifier、装備 modifier の接続 |
| 行為と所有者別イベントの配送 | damage/core/health_subtract・trigger_events、Artifact/Mob の trigger と foreach |
| 防壁の所有、消費、表示 | absorption API/upsert、score_to_health_wrapper の absorb_damage、player_manager/absorption |
| 定義評価、DPR、個体構築、spawn 時の選択 | nexus_loader/try_load_asset、Spawner/Island construct、Spawner spawn |
| 共有作業領域の利用規約 | array/session/open・close、array/compare、ROM provide |

各定義・実装へのリンクと、実装・レビューで守る境界は architecture.md の該当節に併記した。Damage の enqueue と体力反映の順序、個体 UUID と寄与 UUID、array の診断と排他制御を混同しないよう照合した。緩衝体力の呼出例は API 用の確認コードであり、今回実行はしていない。全 namespace の全機能を網羅した調査ではない。

## 2026-09-15: 主要契約の再照合

同じ本体・Asset HEAD で、継承、Field 保存、任意メソッド、Effect、Artifact、API、Wiki の記述との対応を `gpt-5.6-sol` / low で再照合した。次の説明を訂正・限定した。

- [Object method probe](../../TheSkyBlessing/data/asset_manager/functions/object/call_method/run_method.m.mcfunction) の schedule／clear は実装の存在検出であり、再入防止ではない。
- 永続状態は global storage／scoreboard に限定されない。[Mob trigger](../../TheSkyBlessing/data/asset_manager/functions/mob/triggers/.mcfunction)、[Object tick](../../TheSkyBlessing/data/asset_manager/functions/object/triggers/tick.mcfunction)、[Effect tick](../../TheSkyBlessing/data/asset_manager/functions/effect/tick.mcfunction) は OhMyDat に個体状態を保存する。Mob と Object の cleanup 対象の違いも明記した。
- [Object call.m](../../TheSkyBlessing/data/asset/functions/object/call.m.mcfunction) と [Mob call.m](../../TheSkyBlessing/data/asset/functions/mob/call.m.mcfunction) は既存の個体 context を前提とし、独自に entity 選択や Field の load/save を行わない。
- Wiki の Mob event tag と RejoinRule を旧仕様扱いした説明を撤回した。Artifact common use の副作用は Wiki にも記載があり、現行コードからの追加説明と区別した。[wiki-crosscheck.md](wiki-crosscheck.md) に反映した。

## 2026-09-15: AJ の optional 登録を確認

Asset-AnimatedJava HEAD `e48a116501b931a6688d5bd77e8f60c82de27ffa` の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) と [global/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/on_load.json) で、各モデル関数の `required:false` 登録を確認した。Karmic の対応関数と Asset 側 init も照合した。以前の「現行対応は未照合」という記述を訂正し、現在も使われている optional 登録として採用する。この確認に生成・同期処理の履歴調査は必要ない。

## 2026-09-15: ProjectTSB Wiki 全文照合

read-only snapshot `3a5ede8625a713382dca0e96f46b2a8ed75218c5` の公開16ページと `_Sidebar.md` を全文確認し、本体コード HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` と照合した。長文の `create-artifact.md`（1178行）、`api.md`（638行）、`create-effect.md`（446行）、`libraries.md`（427行）、`StorageStructure.md`（394行）、`create-object.md`（334行）、`create-mob.md`（226行）は区間分割して末尾まで読んだ。ページ別の調査範囲・採否・直接URLは [wiki-crosscheck.md](wiki-crosscheck.md) に記録した。

コード根拠は Object/Mob の summon・register・extends・alias・method dispatch、Effect の give・data construction・foreach・event、Artifact の common check/use/create、公開 API wrapper と core。Wiki は設計意図の資料とし、旧テンプレート、WIP schema、一律 cleanup、diagnostic を強制拒否とする説明は現行コードで補正した。外部リンク先と添付画像自体は調査対象外で、本文が読めなかったページはない。

## PR レビューに基づく調査

調査日: 2026-09-14。現行checkoutはHEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94`。GitHub APIの読み取り結果はDevSpaceのローカル領域 `.runtime/knowledge-research/tsb/` に保存した（`pr-list.json`、`issues-open.json`、代表PR JSON/diff/meta）。PR一覧は全状態の直近30件。inline review commentはRESTで3ページ取得し、300件は重複なし、104 PRにまたがり、`updated_at` は2024-10-18〜2026-07-17。無制限の全文収集ではない。

代表inline reviewの採否:

|PR / 直接URL|コメントと差分|PR状態・現行対応|判定|
|---|---|---|---|
|[#2268 r3304623478](https://github.com/ProjectTSB/TheSkyBlessing/pull/2268#discussion_r3304623478)|共有 `api:Temp` をlistとしてappendし最後に全削除すると、他APIが残したCompoundと衝突する。Damage API専用subpathを `[]` で初期化し、そのsubpathだけ削除する提案。|PRはmerged。namespaceの `lib:`→`api:` と `ReduceEnchantmentID` の末尾削除は入った。一方、現行 `data/api/functions/damage/core/get_epf/get_non-protection_epf.mcfunction` は初期化行がコメントアウトされ、`data remove storage api: Temp` で全体を消す。|inline提案は未採用。共有一時storageを一律全削除しないという注意の根拠にだけ使う。|
|[#2174 r3325989624](https://github.com/ProjectTSB/TheSkyBlessing/pull/2174#discussion_r3325989624)|追加diffの `$HealthPer` は参照されずresetだけなので、宣言を削除する提案。|PRはmerged。現行 `data/api/functions/heal/_index.d.mcfunction` の同じ宣言範囲には `$OverHeal`、`$MaxHealth`、`$CurrentHealth` だけが残る。|採用済み。score holderを追加するとき宣言と参照を照合する根拠。|
|[#2278 r3418939178](https://github.com/ProjectTSB/TheSkyBlessing/pull/2278#discussion_r3418939178)|heal eventのfloat値をscoreへ変換する箇所で誤差が出るというthread。diffは格納型をfloatからdoubleへ変える。|PRはopen/unmerged。現行 `data/api/functions/heal/core/push_heal_events/from_healer/push.mcfunction` はfloat格納のまま。thread内にも型不整合への反対意見がある。|未確定。double化や丸め順の規約には採用しない。|

REST review commentにはthreadのresolved状態が含まれないため、上表はPRのmerged状態、保存diff、現行checkoutの3点で判定した。mergedであっても個々の提案が採用されたとは限らない。

そのほかの代表PR:

- [#2268](https://github.com/ProjectTSB/TheSkyBlessing/pull/2268) DamageAPIのEPF namespace修正。
- [#2174](https://github.com/ProjectTSB/TheSkyBlessing/pull/2174) HealAPIの超過回復量・回復前体力。
- [#2266](https://github.com/ProjectTSB/TheSkyBlessing/pull/2266) ScoreToHealth干渉中の最大体力。
- [#2261](https://github.com/ProjectTSB/TheSkyBlessing/pull/2261) PlayerMotion.Api.Launchの定義範囲。
- [#2275](https://github.com/ProjectTSB/TheSkyBlessing/pull/2275)、[#2276](https://github.com/ProjectTSB/TheSkyBlessing/pull/2276)、[#2258](https://github.com/ProjectTSB/TheSkyBlessing/pull/2258)、[#2277](https://github.com/ProjectTSB/TheSkyBlessing/pull/2277) はイベント・asset・ログ・引数リセットの代表例として一覧確認。
- [#2278](https://github.com/ProjectTSB/TheSkyBlessing/pull/2278) HealAPIの計算精度を扱う未merge PR。
- inlineコメント300件をRESTの3ページで取得し、`pull-comments-1.json`〜`3.json`に保存。追加確認PRは #2268,#2174,#2266,#2261,#2275,#2276,#2258,#2277,#2281,#2278。各diff/metaも同ディレクトリに保存した。直接URL例: [#2174 review thread](https://github.com/ProjectTSB/TheSkyBlessing/pull/2174#discussion_r3325989624)、[#2278 review thread](https://github.com/ProjectTSB/TheSkyBlessing/pull/2278#discussion_r3418939178)。

現行コード根拠は `TheSkyBlessing/data/core/functions/load.mcfunction`、`TheSkyBlessing/data/core/functions/load_once.mcfunction`、`TheSkyBlessing/data/core/functions/tick/.mcfunction`、`TheSkyBlessing/data/core/functions/tick/4_interval.mcfunction`、`TheSkyBlessing/data/core/functions/_index.d.mcfunction`、`TheSkyBlessing/data/api/functions/`、`.github/workflows/datapack-linter.yml`、`.github/workflows/make-declares-mcf.ts`。open issues一覧も保存したが、今回の規約を変更する確定根拠として採用したissueはない。

## Asset実行モデルの追加調査

調査日: 2026-09-15。checkoutは同じHEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94`。結果は [asset-runtime.md](asset-runtime.md) にまとめた。

Mob/Objectについて、API summon、ID alias register、`asset:mob|object/extends`、ROMの`Mob.Extends` / `Object.Extends`、固定lifecycleと任意methodのdispatch、`Implement`のfunction存在検出、contextのID/this/method stash、OhMyDatの`MobField` / `ObjectField`へのload/saveを現行コードから一続きで確認した。Effectはgive、親map、固定event、`Effects[]`のforeachと復元を読み、Mob/Objectとは別の単一親・function tag dispatchモデルとして記録した。

直接根拠は `TheSkyBlessing/data/api/functions/{mob,object}/core/summon.mcfunction`、`TheSkyBlessing/data/asset/functions/{mob,object}/{extends,call.m,super.*}.mcfunction`、`TheSkyBlessing/data/asset_manager/functions/{mob,object}/`、`TheSkyBlessing/data/asset_manager/functions/common/context/`、`TheSkyBlessing/data/asset_manager/functions/common/reset_all_context.mcfunction`、`TheSkyBlessing/data/api/functions/entity/mob/effect/core/`、`TheSkyBlessing/data/asset_manager/functions/effect/`。Artifactは同型のextends、super、任意call runtimeがないことを対象文字列の検索で確認したが、Artifact全機構の網羅調査ではない。
