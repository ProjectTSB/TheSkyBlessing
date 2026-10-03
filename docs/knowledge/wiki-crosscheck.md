# ProjectTSB Wiki と現行本体の照合

確認日: 2026-09-15。Wiki snapshot `3a5ede8625a713382dca0e96f46b2a8ed75218c5` の公開16ページと `_Sidebar.md` を全文確認し、本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` と照合した。Wiki は作成者向けの設計意図、現行コードは実行時の事実として分ける。API 一覧をここへ複製せず、誤用時の影響が大きい差だけを扱う。

## 採用する設計意図

- [コーディング規則](https://github.com/ProjectTSB/TheSkyBlessing/wiki/convetion): IMP Doc、最小の可視性、declare、score の初期化と寿命を明示する。例外や古い記法は現行 `_index.d.mcfunction` と関数コメントを優先する。
- [神器の作り方](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-artifact): `Trigger` は表示、function tag が実発火を決める。共通 check/use は単なる便利関数でなく、判定と MP・cooldown・item 更新の副作用を担う。持続する個体処理には Object を使う意図がある。
- [Object の作り方](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-object): `Field` は個体状態、`FieldOverride` は生成個体だけの上書き、alias は ID と実装の境界、override 時の `super.*` の位置に意味がある。
- [Effect の作り方](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-effect): given/re-given/tick/end/remove を区別する。永続 modifier を追加する型は、実際に到達し得る re-given/end/remove で必要な解除を対にする。`PreviousField` は再付与前の Field snapshot である。
- [API](https://github.com/ProjectTSB/TheSkyBlessing/wiki/api): 複数対象へ同じ引数を適用する API は呼出側 reset を要求し得る。`damage` / `heal` の modifier は入力値を書き換えるので、再利用前に値を設定し直す。

## Wiki との相違と実装からの補足

Wiki の旧記述を訂正する箇所と、Wiki にない実装詳細を補足する箇所を分ける。

| 確認点 | 現行の事実と根拠 |
| --- | --- |
| `asset:context` はトリガー後に自動で一律 reset | lifecycle ごとに必要なキーを個別 cleanup する。[共通 reset](../../TheSkyBlessing/data/asset_manager/functions/common/reset_all_context.mcfunction) は `this`、`originID`、stash を消さない。Mob/Object/Effect の `this` は永続 Field の作業窓である。 |
| Object `register` は load 時に1回 | summon API が ID を context へ移し、[register macro](../../TheSkyBlessing/data/asset_manager/functions/object/summon/register.m.mcfunction) で alias register を召喚ごとに評価する。常駐 registry ではない。 |
| abstract Object は直接召喚不可 | [summon dispatch](../../TheSkyBlessing/data/asset_manager/functions/object/summon/.mcfunction) は `tellraw` 後も summon を続ける。規約違反ではあるが runtime の強制拒否ではない。`ExtendsSafe` と複数親の abstract 検査も同じく診断である。 |
| 補足: 複数親の合成・探索順 | Wiki も Object の `Extends` を `int[]` と説明するが、探索順は詳述しない。Mob/Object は直接親配列を ROM に保存する。定義は親を順に合成して子が最後に上書きし、method は子に実装があれば暗黙 fallback しない。複数親では sibling の実装が複数呼ばれ得て、Object 任意 method は末尾側から探索する。詳細は [asset-runtime.md](asset-runtime.md)。 |
| 補足: method の実装有無の検出 | Wiki は method の成否で fallback を決めるとは述べていない。[Object method probe](../../TheSkyBlessing/data/asset_manager/functions/object/call_method/run_method.m.mcfunction) の `Implement` は schedule の可否による function resource 存在検出で、method の成否・返り値ではない。 |
| 補足: Effect と Mob/Object の実行系の違い | Wiki も Effect 固有の wrapper と固定イベントを説明する。現行 Effect は function tag と ID wrapper、ROM の単一親 chain、`Effects[]` 要素単位の固定 event で動く。[effect foreach](../../TheSkyBlessing/data/asset_manager/functions/effect/foreach.m.mcfunction) が Field を `this` へ展開し復元する。 |
| `DurationOperation:"replace"` は常に duration の大きい方 | [Effect data construction](../../TheSkyBlessing/data/asset_manager/functions/effect/give/make_effect_data.mcfunction) は新 stack が旧 stack 以上なら最大 duration、下回るなら旧 duration を維持する。 |
| Absorption get は引数なしで `Return.Amount` 等 | [公開 get](../../TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction) は `Argument.UUID` 必須で、core の結果は `Return.Absorption`。validation の早期 return では入力 cleanup に到達しない。 |
| 補足: API Argument の cleanup | Wiki は原則自動 remove としつつ、damage/heal/effect 等の例外と呼出側 reset を明記する。現行実装では個別 wrapper が成功時だけ消す場合もあるため、各 IMP Doc と失敗時を含む全分岐を読む。 |
| 補足: Artifact の共通 use が更新する状態 | [common use](../../TheSkyBlessing/data/asset_manager/functions/artifact/use/.mcfunction) は MP、cooldown、使用回数、LatestUseTick、item 更新に加え、後続 Damage API 用の `PersistentArgument.AdditionalMPHeal` を設定する。通常の `Argument` reset と同じ寿命にしない。 |
| Mob の旧 `summon/2.summon` テンプレート | 現行 Mob/Object は register、numeric alias、asset manager の summon/init/event dispatch が中心。旧形式の説明を現行 v3 の入口にはしない。 |

## 全ページの調査範囲と採否

| ページ | 読んだ範囲 | 本体ナレッジへの採否 |
| --- | --- | --- |
| [Home](https://github.com/ProjectTSB/TheSkyBlessing/wiki/Home) | 全文（1文） | 目次説明のみ。 |
| [_Sidebar](https://github.com/ProjectTSB/TheSkyBlessing/wiki/_Sidebar) | 全21行 | 公開ページ集合の照合に採用。 |
| [How-to-use-Git](https://github.com/ProjectTSB/TheSkyBlessing/wiki/How-to-use-Git) | 全156行 | Git一般・旧clone/task手順のため不採用。 |
| [TSB-GitHub-TIPS](https://github.com/ProjectTSB/TheSkyBlessing/wiki/TSB-GitHub-TIPS) | 全7行 | label案内のみ。不採用。 |
| [resolve-conflict](https://github.com/ProjectTSB/TheSkyBlessing/wiki/resolve-conflict) | 全26行 | tag JSON の重複回避という意図のみ。機械的 Accept Both 手順は不採用。 |
| [convetion](https://github.com/ProjectTSB/TheSkyBlessing/wiki/convetion) | 全150行 | IMP Doc・declare・命名・一時値寿命を採用。絶対的な「全 score reset」は呼出契約で限定。 |
| [create-artifact](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-artifact) | 全1178行（区間分割） | trigger/check/use、表示と実処理、Equipment/Effect 差、event context を採用。debug実行手順は不採用。 |
| [create-mob](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-mob) | 全226行 | 命名・一時値・汎用能力と現行にも残る Victim/Attacker tag を採用。テンプレートの入口は現行 v3 に合わせる。 |
| [create-effect](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-effect) | 全446行 | event、Field、再付与、cleanup を採用。継承は現行の単一親 chain と照合して限定。 |
| [create-object](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-object) | 全334行 | Field/alias/super の意図を採用。load登録・強制不可の表現を訂正。 |
| [ItemMetaData](https://github.com/ProjectTSB/TheSkyBlessing/wiki/ItemMetaData) | 全43行 | item metadata の目的を確認。今回の主要契約には転記せず。 |
| [tags](https://github.com/ProjectTSB/TheSkyBlessing/wiki/tags) | 全112行 | 恒常分類と event 一時 tag の意図を確認。selector・距離・対象は利用時に現行 handler を再確認。 |
| [api](https://github.com/ProjectTSB/TheSkyBlessing/wiki/api) | 全638行 | API探索と reset 意図を採用。個別 path/schema/Return はコード優先。 |
| [libraries](https://github.com/ProjectTSB/TheSkyBlessing/wiki/libraries) | 全427行 | 利用可能機能の索引として採用。個別引数は IMP Doc を優先し、全一覧は複製しない。 |
| [StorageStructure](https://github.com/ProjectTSB/TheSkyBlessing/wiki/StorageStructure) | 全394行 | context/OhMyDat の概念を採用。WIP節と一律 reset 説明は契約にしない。 |
| [RejoinRule](https://github.com/ProjectTSB/TheSkyBlessing/wiki/RejoinRule) | 全10行 | 復旧用途、player を as/at とする実行 context、入口を軽く保つ方針を採用。現行でも Mob の直下配置と Artifact の trigger/rejoin_process があり、配置は対象カテゴリの実例で確認する。旧パスとして一括棄却しない。 |
| [Animated-Javaを使う歳の注意](https://github.com/ProjectTSB/TheSkyBlessing/wiki/Animated-Javaを使う歳の注意) | 全6行 | Mob外利用は要調整という意図を採用。`required:false` は現行でも使用中。現在の配置は Asset-AnimatedJava の [global/root/on_load.json](https://github.com/ProjectTSB/Asset-AnimatedJava/blob/e48a116501b931a6688d5bd77e8f60c82de27ffa/AnimatedJava/data/animated_java/tags/functions/global/root/on_load.json) 等の集約 tag JSON である。 |

外部リンク先の一般 Git/DHP/Gamepedia 文書や添付画像の内容までは調査対象にしていない。Wiki 内で本文が読めなかったページはない。
