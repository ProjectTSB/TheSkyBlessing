# Item・回収・Mob・計算部品の抽象構造

確認日: 2026-09-15。本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` の生成、保存、回収、転送、計算の入口と利用側を静的に確認した。[全体の抽象構造](architecture.md) と併せて、状態の所有者と操作の単位を判断するために使う。

## Artifact：テンプレートから個体を作り、配送する

Artifact の型定義と、生成した ItemStack は別の対象である。[Elemental Sword の give](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/artifact/0057.elemental_sword/give/2.give.mcfunction) は ID やアイテム種、使用回数等のテンプレートを渡し、共通の生成処理へ進む。[create/set_data](../../TheSkyBlessing/data/asset_manager/functions/artifact/create/set_data.mcfunction) が Item compound を構築し、`tag.TSB.ID` に型、`tag.TSB.UUID` に `$ArtifactIndex` 由来の単一整数を設定する。通常生成時の stack Count は 1 であり、使用可能回数 RemainingCount と別である。

この UUID は Artifact 個体の識別に使う値で、[装備 modifier](architecture.md) の寄与を識別する4整数の UUID とは異なる。名前だけで同じ種類の識別子として受け渡さない。商人の販売用 placeholder は個体化前の別表現であり、[購入後に通常生成へ解決する](world-components.md)。

生成の後に配送方法が分かれる。[共通 give](../../TheSkyBlessing/data/asset/functions/artifact/common/give.mcfunction) は Type に応じて give、drop、replace、storage へ送る。

| 入口 | 生成結果の行き先 |
| --- | --- |
| [give/from_id](../../TheSkyBlessing/data/api/functions/artifact/give/from_id.mcfunction) | プレイヤーへ付与。共通処理の inventory 判定で収まらない場合は保護付き drop |
| [spawn/from_id](../../TheSkyBlessing/data/api/functions/artifact/spawn/from_id.mcfunction) | 指定位置の item entity |
| [replace/from_id](../../TheSkyBlessing/data/api/functions/artifact/replace/from_id.mcfunction) | 指定 slot |
| [storage/from_id](../../TheSkyBlessing/data/api/functions/artifact/storage/from_id.mcfunction) | `api: Return.Artifact` の Item compound |

storage は完成アイテムを呼出側に返す方式であり、永続の保管庫を作る API ではない。生成中に使う固定座標の block も作業領域である。初期性能を変えるならテンプレート、配送先を変えるなら対応 API、既存個体の回数や CD を変えるなら現在の ItemStack を更新する。既存品への更新を新規 give で代用すると、個体の識別や使用状態を引き継ぐ変更にならない。

## Inventory：snapshot と slot への書き戻し

[data_get/inventory](../../TheSkyBlessing/data/api/functions/data_get/inventory.mcfunction) は DataCache を介して Inventory を取得する。呼ぶたびにその瞬間の entity NBT を無条件で再取得する API として扱わず、現在の処理が使う snapshot と実 inventory の違いを確認する。

[inventory/set](../../TheSkyBlessing/data/api/functions/inventory/set.mcfunction) は slot 付き配列から通常 inventory、防具、offhand を再構築する。渡さなかった元アイテムを維持する部分更新ではない。カーソル保持アイテムはこの置換の例外になる。

選択中のアイテムを扱う [get_item](../../TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/get_item.mcfunction)、[replace_air](../../TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_air.mcfunction)、[replace_from_shulker_box](../../TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_from_shulker_box.mcfunction) は、選択 hotbar slot を操作するための短い呼出区間の部品である。長期間有効なアイテム参照や、同じ UUID の個体を追い続ける handle ではない。

[神器使用後の update](../../TheSkyBlessing/data/asset_manager/functions/artifact/use/item/update.mcfunction) は、RemainingCount や CD を更新し、選択 slot に書き戻す実例である。inventory 全体の復元、1 slot の置換、個体 NBT の更新を別操作として選ぶ。変更レビューでは、snapshot を取得してから書き戻すまでに、別の処理が実 inventory を変更しないかを見る。

## 墓と LostItems：所有者の保存内容と、回収の窓口

[死亡 handler](../../TheSkyBlessing/data/core/functions/handler/death.mcfunction) は snapshot と GraveVersion を更新し、前回分の扱いと新しい墓の構築を編成する。[grave/build](../../TheSkyBlessing/data/player_manager/functions/grave/build/.mcfunction) は対象アイテムをプレイヤー側 OhMyDat の GraveStoreItems に保存して inventory を空にする。[アイテムの選別](../../TheSkyBlessing/data/player_manager/functions/grave/build/process_item.mcfunction) では消滅扱いと soulbound を分け、[soulbound の返却](../../TheSkyBlessing/data/player_manager/functions/common/regive_soulbounds.mcfunction) へつなぐ。

墓の item_display／interaction は回収するための実体であり、内容物の所有者はプレイヤー側の保存領域である。[墓の set_data](../../TheSkyBlessing/data/player_manager/functions/grave/build/set_data.mcfunction) は GraveUserID と GraveVersion で所有者と世代を結ぶ。[tick](../../TheSkyBlessing/data/player_manager/functions/grave/tick/.mcfunction) は所有者を探して回収条件を判定し、古い世代の墓を除く。再ログイン時に墓へ内容を自動回収する構造ではない。

深い奈落で物理的な墓を作らない経路や次の死亡では、[take_items](../../TheSkyBlessing/data/player_manager/functions/grave/take_items.mcfunction) が墓の保存内容を LostItems へ移す。このため、複数の墓を同時に保持する機能は、表示 entity を増やすだけでは足りない。所有者側の保存内容も世代ごとに区別する設計が必要になる。

[墓の回収](../../TheSkyBlessing/data/player_manager/functions/grave/tick/break.mcfunction) は次の移管を行う。

1. 回収時点で持っている inventory を最大2個の package にして、墓の位置へ drop する。
2. GraveStoreItems を inventory/set へ渡し、墓に預けた内容で inventory を置換する。
3. 回収した墓と保存内容を片付ける。

空き slot に墓のアイテムを merge する処理ではない。回収 UI や所持品保持の変更では、現在品の package 化と保存品の復元を一続きで追う。

[LostItems の give](../../TheSkyBlessing/data/api/functions/lost_items/give.mcfunction) の Count は、ItemStack 内の個数ではなく、保存配列から選ぶ entry 数である。[give_part](../../TheSkyBlessing/data/player_manager/functions/lost_item/give_part/.mcfunction) が選択 entry を保存配列から除き、その stack 全体を返す。返却量を変更するときは、entry 数と stack Count を混同しない。

## Mob：共通の個体表現と追加当たり判定

[共通 init](../../TheSkyBlessing/data/mob_manager/functions/init/.mcfunction) は対象 entity に MobUUID と検索用 flag を付ける。通常 Mob には分類や team、vanilla Health から論理体力への移送も行う。一方、Asset Mob は [固有 set_data](../../TheSkyBlessing/data/asset_manager/functions/mob/summon/set_data.mcfunction) が型、体力、耐性、Field 等を用意してから共通 init に入り、通常 Mob 用の設定を省く。共通の個体化と Asset の型固有方針を分けて読む。

[add_flag](../../TheSkyBlessing/data/mob_manager/functions/init/add_flag.mcfunction) の MobUUID は 1〜32767 を循環する値で、Minecraft の UUID や永久に一意な ID ではない。検索用 tag は FindFlag0〜15 を使う。独自に長期間の関連付けを増やす場合、値が再利用されることを前提に寿命と解除を決める。

ExtendedCollision は物理的な追加当たり判定で、ForwardTargetMobUUID が論理本体を指す。API は [forward target の判定](../../TheSkyBlessing/data/api/predicates/mob/has_forward_target.json) と callback 転送を使うが、適用対象と重複抑制は入口によって異なる。

- [with_idempotent](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/with_idempotent.m.mcfunction) は重複抑制をしない。IsForwardedOnly によって元 entity と本体の両方、または転送先を優先して callback を呼ぶ。名前を「一度だけ実行される」という保証に読み替えない。
- [with_non-idempotent](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/with_non-idempotent.m.mcfunction) の抑制は ExtendedCollision 経由に限られる。[適用集合](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/check_initial_apply.m.mcfunction) は Key と ForwardTargetMobUUID ごとに管理され、[reset](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/reset_initial_apply.m.mcfunction) も指定 Key 単位である。通常 Mob の直通経路を含む全呼出しの一度だけ実行や再入防止は保証しない。
- 集合の有効区間は利用側が決める。entity finder 用は [tick](../../TheSkyBlessing/data/core/functions/tick/.mcfunction)、Damage 用は [damage reset](../../TheSkyBlessing/data/api/functions/damage/core/reset.mcfunction) と single-damage session の終了を辿る。

[get_health](../../TheSkyBlessing/data/api/functions/mob/get_health.mcfunction) は本体への転送を使い、[Damage](../../TheSkyBlessing/data/api/functions/damage/.mcfunction) は重複抑制を利用する。一方、[modify_health](../../TheSkyBlessing/data/api/functions/mob/modify_health.mcfunction) は追加当たり判定を除外する。どの Mob API も自動的に同じ転送をするという前提で実装しない。新しい効果では、論理本体だけか両方か、複数の当たり判定から適用された場合の単位、適用集合をいつ解除するかを決める。

## 幾何・移動・ROM：結果の受け渡し方が違う部品

### 幾何判定は対象集合を作り、効果は呼出側が与える

[bounding_fan](../../TheSkyBlessing/data/lib/functions/bounding_fan/.mcfunction) は位置・角度・半径等と selector を受け、該当 entity に BoundingFan tag を付ける。[detect](../../TheSkyBlessing/data/lib/functions/bounding_fan/core/detect.m.mcfunction) は selector 文字列を macro で展開する。Damage や陣営の意味を幾何計算自体が決めるわけではない。

[Lawless Slashshot](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/object/2241.lawless_slashshot/detect_hit_entity/.mcfunction) は検出 tag を自身の命中判定へ変換する。[Clock Thunder](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/object/2248.clock_thunder/tick/thunder.mcfunction) は円柱の検出結果へ Damage を与え、検出 tag を解除する利用例である。

対象の陣営・除外条件は caller の selector、形状計算は lib、与える効果・一撃内の重複・tag の後片付けは利用側から追う。一時 tag は対象集合の受け渡しであり、自動で寿命を持つ戻り値ではない。

### 散布と速度には、物理 entity と論理値の境界がある

[forward_spreader/circle](../../TheSkyBlessing/data/lib/functions/forward_spreader/circle.mcfunction) は実行 entity の位置を前方のランダムな位置へ移す。結果は Return storage ではなく、移動後の位置に現れる。[Musket Matchlock](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/artifact/0005.musket_matchlock/trigger/3.main.mcfunction) は一時 marker を散布先へ移して弾の方向を作り、marker を片付ける。弾の所有者や寿命は散布部品の責務ではない。

[player_vector/get](../../TheSkyBlessing/data/api/functions/player_vector/get.mcfunction) が返すのは保存された PlayerPosDiff である。[位置補正と差分計算](../../TheSkyBlessing/data/player_manager/functions/pos_fix_and_calc_diff.mcfunction) が位置差や不連続な移動を処理し、[落下ダメージ](../../TheSkyBlessing/data/player_manager/functions/fall_damage/deal_damage/get_vars.mcfunction) 等が使う。生の Motion NBT と同一視しない。

速度を書き込む側も、[motion の player 経路](../../TheSkyBlessing/data/lib/functions/motion/core/xyz/player.mcfunction) は PlayerMotion の固定小数点 score を使い、非 player の Motion NBT 操作と分かれる。移動機能は、ゲーム上の強さや耐性の方針と、対象に速度を反映する方式を分けて変更する。

### ROM は数値アドレスに対する共有の参照窓

[rom/please](../../TheSkyBlessing/data/api/functions/rom/please.mcfunction) は 0〜65535 のアドレスを扱い、[provide](../../TheSkyBlessing/data/rom/functions/provide.mcfunction) が共有の `rom:_` の参照窓を組み替える。次の provide はその窓の参照対象を変える。名称から読み取り専用だと判断したり、取得した窓を独立した永続 handle として保持したりしない。

Mob/Object の継承などの領域上の意味は ROM の利用側が与える。新しいデータを置く場合はアドレスの所有と衝突を確認し、呼び出した別処理が窓を切り替える場合は、必要な再取得や退避を既存の利用規約に沿って行う。

## 実装・レビューで最初に決めること

1. 生成する型・既存個体・snapshot・slot・保存配列のどれを操作するか。
2. 結果が戻るのは storage、score、tag、entity の位置、実 inventory のどこか。
3. 識別子や Count は何を数え、どの区間まで有効か。
4. 対象の選択、効果の適用、保存内容の移管、後片付けを誰が担当するか。

各節は入口と代表的な利用側をコードで確認した説明であり、今回これらのゲーム内動作を実行検証したものではない。
