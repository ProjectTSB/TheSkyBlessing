---
title: Item・回収・Mob・計算部品の抽象構造
description: Item生成・inventory・墓・LostItems・Mob初期化・幾何や移動の部品を扱うときに読む
---

# Item・回収・Mob・計算部品の抽象構造

確認日: 2026-09-15。本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` の生成、保存、回収、転送、計算の入口と利用側を静的に確認した。[全体の抽象構造](architecture.md) と併せて、状態の所有者と操作の単位を判断するために使う。

## Artifact：テンプレートから個体を作り、配送する

Artifact の型定義と、生成した ItemStack は別の対象である。[Elemental Sword の give](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/artifact/0057.elemental_sword/give/2.give.mcfunction) は ID やアイテム種、使用回数等のテンプレートを渡し、共通の生成処理へ進む。[create/set_data](../../TheSkyBlessing/data/asset_manager/functions/artifact/create/set_data.mcfunction) が Item compound を構築し、`tag.TSB.ID` に型、`tag.TSB.UUID` に `$ArtifactIndex` 由来の単一整数を設定する。通常生成時の stack Count は 1 であり、使用可能回数 RemainingCount と別である。

この UUID は Artifact 個体の識別に使う値で、[装備 modifier](architecture.md) の寄与を識別する4整数の UUID とは異なる。名前だけで同じ種類の識別子として受け渡さない。商人の販売用 placeholder は個体化前の別表現であり、[購入後に通常生成へ解決する](world-components.md)。

[HideFlagsの設定](../../TheSkyBlessing/data/asset_manager/functions/artifact/create/set_hide_flags.mcfunction) は2^29倍して符号を調べ、元のbit 2が未設定の場合だけ4を加える。既存の他のbitを保持しながら一つのflagを立てる処理であり、常に4を足す操作ではない。巨大な乗算は [MP表示](runtime-and-assets.md#表示用の値へ変換してから共通の表示処理へ渡す) と同じ32bitの符号を使う判定である。

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

[inventory/set](../../TheSkyBlessing/data/api/functions/inventory/set.mcfunction) はslot付き配列でinventoryを置換し、入力にないslotも空にする。カーソル保持アイテムはIMP Docにある例外であり、部分更新APIとして使わない。27〜35・防具・offhandは、DevSpaceの `docs/mcfunction-idioms.md`「一致しない要素も書込みで作られる」を利用し、空の入力からもSlotだけの要素を作る。これを作業shulkerで空アイテムへ変換して `loot replace` するため、`Items[0]` の条件を「入力アイテムがある場合だけ置換」と読まない。[実機検証](../verification/mp-xpbar-and-grave.md)では欠落した防具・offhand・slot27の消去を確認した。

選択中のアイテムを扱う [get_item](../../TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/get_item.mcfunction)、[replace_air](../../TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_air.mcfunction)、[replace_from_shulker_box](../../TheSkyBlessing/data/api/functions/inventory/refer_selected_item_slot/replace_from_shulker_box.mcfunction) は、選択 hotbar slot を操作するための短い呼出区間の部品である。長期間有効なアイテム参照や、同じ UUID の個体を追い続ける handle ではない。

[神器使用後の update](../../TheSkyBlessing/data/asset_manager/functions/artifact/use/item/update.mcfunction) は、RemainingCount や CD を更新し、選択 slot に書き戻す実例である。inventory 全体の復元、1 slot の置換、個体 NBT の更新を別操作として選ぶ。変更レビューでは、snapshot を取得してから書き戻すまでに、別の処理が実 inventory を変更しないかを見る。

data_get系の内部呼出しはOhMyDatのpointerを取得し直すため、別個体のFieldを扱う途中に呼ぶと参照先が変わり得る。また同じtickのNBT書換え後に新しいinventoryが必要なら、[invalidate_cache](../../TheSkyBlessing/data/api/functions/data_get/invalidate_cache.mcfunction) の契約を確認する。APIを呼び直すだけで、必ず書換え後の内容へ更新されるとは限らない。core:tick外のscheduleやadvancementからの参照も常に最新のNBTになる保証はなく、現行運用ではその差を現実的に許容している（ユーザー見解）。状態の即時性が結果を変える処理では、キャッシュを避ける・無効化する・差を許容する、のどれが適切かを個別に判断する。

逆に、保存したアイテムをentity用predicateへ渡す際には、[use_itemの判定](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/use_item/check_has_consumable.mcfunction) が一時armor_standのHandItemsへ旧mainhand/offhandを写して検査する。現在のプレイヤーの手を調べる代用ではなく、保存した時点のアイテムを既存predicateで評価するための橋渡しである。判定後は一時個体をkillする。

### 作業shulkerはNBTから実アイテムを取り出す橋渡し

`loot ... mine 10000 0 10000 debug_stick` は、作業shulkerのItemsを実アイテムへ変換するために使う。[lime_shulker_boxのloot table](../../TheSkyBlessing/data/minecraft/loot_tables/blocks/lime_shulker_box.json) が、道具がdebug_stickのときだけ `minecraft:contents` を直接返すよう上書きされている。箱そのものを取り出す操作ではない。色や道具を変えるとこの分岐から外れる。[load_once](../../TheSkyBlessing/data/core/functions/load_once.mcfunction) が三次元それぞれに作業箱を設置・forceloadするため、利用する実行次元も契約の一部となる。

呼出側はItemsを書いてから取り出すまでを一つの利用区間として扱う。固定座標の箱は共有領域であり、別のAPIや入れ子の処理が使う前後で内容が保持されると仮定しない。結果を箱に残すAPIもあるため、一律に末尾で空にする規約にはしない。

## 墓と LostItems：所有者の保存内容と、回収の窓口

[gamerule設定](../../TheSkyBlessing/data/core/functions/define_gamerule.mcfunction) は `keepInventory true` でVanillaの死亡時dropを抑える。アイテムの没収・墓への保存・返却は下記の本体処理が担うため、gameruleだけでTSBの死亡時の所持品保持を判断しない。

[死亡 handler](../../TheSkyBlessing/data/core/functions/handler/death.mcfunction) は snapshot と GraveVersion を更新し、前回分の扱いと新しい墓の構築を編成する。[grave/build](../../TheSkyBlessing/data/player_manager/functions/grave/build/.mcfunction) は対象アイテムをプレイヤー側 OhMyDat の GraveStoreItems に保存して inventory を空にする。[アイテムの選別](../../TheSkyBlessing/data/player_manager/functions/grave/build/process_item.mcfunction) では消滅扱いと soulbound を分け、[soulbound の返却](../../TheSkyBlessing/data/player_manager/functions/common/regive_soulbounds.mcfunction) へつなぐ。

墓の item_display／interaction は回収するための実体であり、内容物の所有者はプレイヤー側の保存領域である。[墓の set_data](../../TheSkyBlessing/data/player_manager/functions/grave/build/set_data.mcfunction) は GraveUserID と GraveVersion で所有者と世代を結ぶ。[tick](../../TheSkyBlessing/data/player_manager/functions/grave/tick/.mcfunction) は所有者を探して回収条件を判定し、古い世代の墓を除く。再ログイン時に墓へ内容を自動回収する構造ではない。

深い奈落で物理的な墓を作らない経路や次の死亡では、[take_items](../../TheSkyBlessing/data/player_manager/functions/grave/take_items.mcfunction) が墓の保存内容を LostItems へ移す。このため、複数の墓を同時に保持する機能は、表示 entity を増やすだけでは足りない。所有者側の保存内容も世代ごとに区別する設計が必要になる。

[墓の回収](../../TheSkyBlessing/data/player_manager/functions/grave/tick/break.mcfunction) は次の移管を行う。

1. 回収時点で持っている inventory を最大27entryずつ2回に分けて作業shulkerへ移し、`loot spawn ... mine ... debug_stick` で中身を墓の位置へdropする。最大2個の箱アイテムを落とす処理ではない。
2. GraveStoreItems を inventory/set へ渡し、墓に預けた内容で inventory を置換する。
3. 回収した墓と保存内容を片付ける。

空き slot に墓のアイテムを merge する処理ではない。現在品のdropと、inventory/setによる保存品への置換を一続きで追う。回収時に明示的なclearはないが、入力にない枠も上記の空slot生成で置換されるため、clearがないことだけから複製を指摘しない。`lib: Package` は作業箱用にSlotを付けた配列であり、ゲーム内の梱包アイテムとは区別する。

[LostItems の give](../../TheSkyBlessing/data/api/functions/lost_items/give.mcfunction) の Count は、ItemStack 内の個数ではなく、保存配列から選ぶ entry 数である。[give_part](../../TheSkyBlessing/data/player_manager/functions/lost_item/give_part/.mcfunction) が選択 entry を保存配列から除き、その stack 全体を返す。返却量を変更するときは、entry 数と stack Count を混同しない。

[dropしたアイテムの停止](../../TheSkyBlessing/data/player_manager/functions/grave/tick/stop_motion.mcfunction) は、Motionを0へ書いた後に `damage @s 0` を挟む。コメントが示す目的はMotionの変更を反映させることであり、ダメージ量が0だから不要とは判断しない。ユーザーの見解では、`Fire:2s` も更新を起こす別手段だが、`damage @s 0` はMob相手だとダメージ表示が出るため同じ用途に使えず、Fireには一瞬燃えて見える場合がある。今回のitem entityではどちらでもよいとの判断である。対象の種類と見た目への副作用を確認し、一律に交換可能な同期APIとして広げない。内部機構が同じことを確認したものではない。

### 満腹度は効果と目標値の監視で復元する

[死亡時の保存](../../TheSkyBlessing/data/player_manager/functions/adjust_hunger/death.mcfunction) はHungerTargetへ値を残す。[復活時](../../TheSkyBlessing/data/player_manager/functions/adjust_hunger/respawn.mcfunction) は目標が20以外なら `hunger 4 255` を与える。RespawnEventが80tickに達した[遅延処理](../../TheSkyBlessing/data/player_manager/functions/adjust_hunger/respawn.delay.mcfunction) は目標値に関係なくsaturationを与えて監視を開始し、[observe](../../TheSkyBlessing/data/player_manager/functions/adjust_hunger/observe.mcfunction) が目標到達でsaturationを解除する。playerのfoodLevelを直接代入する処理の代わりに、Vanillaの効果と観測したscoreで目標へ戻す仕組みである。hungerの4秒と遅延の80tickは時間の上で対応するため、片方を変えるときはもう片方も確認する。hungerとsaturationを打ち消し合う不要な付与と扱わず、保存値・復活時の時間順・監視終了を一続きで保つ。

## Vanilla の効果を秒未満の単位で制御する

Minecraft 1.20.4 の `effect give` は効果時間を秒単位で指定するため、より細かい時間制御には area_effect_cloud（AEC）の効果NBTを使う（ユーザー確認済みの意図）。[テレポーターの待機処理](../../TheSkyBlessing/data/asset_manager/functions/teleporter/tick/active.mcfunction) の `Duration:6,Age:4,effects:[{id:"blindness",amplifier:0b,duration:25,show_particles:0b}]` はその実例である。短時間の効果付与を実装するときの選択肢とし、単に回りくどいという理由で `effect give` へ置き換えない。AEC本体の `Duration`・`Age` と、付与する効果の `effects[].duration` は別の値である。今回確認したのは時間制御の意図で、NBTの値から実際の付与時刻・持続時間へ換算する規則や、付与対象の範囲まで新たに検証したものではない。

## 金ハートの量を attribute と効果の付与・解除で設定する

[absorption/set.m](../../TheSkyBlessing/data/player_manager/functions/absorption/set.m.mcfunction) の `max_absorption base set` → `effect give @s absorption 1 255 true` → `effect clear @s absorption` は、吸収量を指定した上限に合わせる手法である（ユーザー確認済み）。付与した直後に解除する2行を打ち消し合う処理として削除したり、効果を付けっぱなしにしたりしない。防壁の合計値を金ハートへ反映する実装であり、防壁そのものの追加・消費・解除は [緩衝体力の状態モデル](architecture.md#緩衝体力は複数の防壁とその表示を分ける) に従う。新しい防壁の実装から、この内部関数を直接呼ぶために公開範囲を広げない。

## Mob：共通の個体表現と追加当たり判定

[共通 init](../../TheSkyBlessing/data/mob_manager/functions/init/.mcfunction) は対象 entity に MobUUID と検索用 flag を付ける。通常 Mob には分類や team、vanilla Health から論理体力への移送も行う。一方、Asset Mob は [固有 set_data](../../TheSkyBlessing/data/asset_manager/functions/mob/summon/set_data.mcfunction) が型、体力、耐性、Field 等を用意してから共通 init に入り、通常 Mob 用の設定を省く。共通の個体化と Asset の型固有方針を分けて読む。

初期化後のVanillaのHealthは論理的な残り体力ではなく、変化量を読むための基準値512fとして使われる。[fix_health](../../TheSkyBlessing/data/mob_manager/functions/fix_health.mcfunction) は `Health × 100 - 51200` をMobHealthへ反映し、上限を適用してHealthを512fへ戻す。転送先を持つ追加当たり判定はこの直接加算から除外される。[プレイヤーの攻撃検出](../../TheSkyBlessing/data/mob_manager/functions/entity_finder/player_hurt_entity/fetch_entity.mcfunction) も同じ差を攻撃イベントのダメージ量へ変換してからHealthを戻す。512fへの復元は回復スキルではなく次の観測の準備であり、冗長な代入として削除しない。体力取得・変更には公開Mob APIを使い、Health NBTを論理体力として読み書きしない。

[神器の近接攻撃配送](../../TheSkyBlessing/data/asset_manager/functions/artifact/triggers/attack/foreach.mcfunction) は、`ShouldVanillaAttack` を付けてから近接攻撃のfunction tagを呼び、戻った時点でもtagが残る場合だけ通常攻撃分の処理へ進む。これは配送中に通常攻撃分を抑制するための状態で、単に攻撃を検出した履歴ではない。

[add_flag](../../TheSkyBlessing/data/mob_manager/functions/init/add_flag.mcfunction) の MobUUID は 1〜32767 を循環する値で、Minecraft の UUID や永久に一意な ID ではない。検索用 tag は FindFlag0〜15 を使う。独自に長期間の関連付けを増やす場合、値が再利用されることを前提に寿命と解除を決める。

攻撃元の特定では、[被弾advancement](../../TheSkyBlessing/data/mob_manager/advancements/entity_finder/check_entity_hurt_player.json) の `damage.source_entity.nbt` が、攻撃元のFindFlagをbitごとのcriterionとして記録する。requirementsは各bitの0/1をORでまとめ、全bitと攻撃種別・防御判定の各グループをANDで結ぶ。[filters](../../TheSkyBlessing/data/mob_manager/functions/entity_finder/entity_hurt_player/filters/15.mcfunction) は被弾者に記録されたcriterionと候補Mobのtagを1bitずつ照合し、合う候補だけ次へ進める。reward関数の実行者は被弾したプレイヤーであり、攻撃元を `@s` として受け取るわけではない。MobUUIDの値域、bitからtagへの変換、criteria・requirements、照合関数を一組として変更する。攻撃種別の4分類はすべて被弾側の `entity_hurt_player` で記録する。`type-other` も攻撃側イベントと混ぜず、被弾1回で他のrequirementsと併せて成立できるようにする。

ExtendedCollision は物理的な追加当たり判定で、ForwardTargetMobUUID が論理本体を指す。API は [forward target の判定](../../TheSkyBlessing/data/api/predicates/mob/has_forward_target.json) と callback 転送を使うが、適用対象と重複抑制は入口によって異なる。

- [with_idempotent](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/with_idempotent.m.mcfunction) は重複抑制をしない。IsForwardedOnly によって元 entity と本体の両方、または転送先を優先して callback を呼ぶ。名前を「一度だけ実行される」という保証に読み替えない。
- [with_non-idempotent](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/with_non-idempotent.m.mcfunction) の抑制は ExtendedCollision 経由に限られる。[適用集合](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/check_initial_apply.m.mcfunction) は Key と ForwardTargetMobUUID ごとに管理され、[reset](../../TheSkyBlessing/data/api/functions/mob/apply_to_forward_target/reset_initial_apply.m.mcfunction) も指定 Key 単位である。通常 Mob の直通経路を含む全呼出しの一度だけ実行や再入防止は保証しない。
- 集合の有効区間は利用側が決める。entity finder 用は [tick](../../TheSkyBlessing/data/core/functions/tick/.mcfunction)、Damage 用は [damage reset](../../TheSkyBlessing/data/api/functions/damage/core/reset.mcfunction) と single-damage session の終了を辿る。

[get_health](../../TheSkyBlessing/data/api/functions/mob/get_health.mcfunction) は本体への転送を使い、[Damage](../../TheSkyBlessing/data/api/functions/damage/.mcfunction) は重複抑制を利用する。一方、[modify_health](../../TheSkyBlessing/data/api/functions/mob/modify_health.mcfunction) は追加当たり判定を除外する。どの Mob API も自動的に同じ転送をするという前提で実装しない。新しい効果では、論理本体だけか両方か、複数の当たり判定から適用された場合の単位、適用集合をいつ解除するかを決める。

## 幾何・移動・ROM：結果の受け渡し方が違う部品

### commonMarkerは位置・向きの共有作業領域

[load_once](../../TheSkyBlessing/data/core/functions/load_once.mcfunction) が作るUUID `0-0-0-0-0` のmarkerは、PosやRotationを介してベクトル・三角関数等を計算するための共有entityである。独立した計算オブジェクトではなく、motion・forward_spreader・bounding系等が同じ個体を使う。書いた値を読む前に別の利用関数を呼ぶと内容が変わり得るため、使用区間と各関数の後片付けを保つ。原点で計算する用例と、呼出位置へ移してからoverworldの原点へ戻す用例を区別する。

ユーザー確認として、このUUIDの共有markerはAssetから直接利用でき、別次元への借用も想定されている。ただし戻し忘れの影響が大きいため、Asset側での利用は控えめにしていた。新規利用では公開lib APIで済むか確認し、直接借りる場合は早期returnを含むすべての経路で返却と共有状態の復元を確かめる。内部alias `commonMarker` の宣言範囲を広げる許可とは区別する。

### 幾何判定は対象集合を作り、効果は呼出側が与える

[bounding_fan](../../TheSkyBlessing/data/lib/functions/bounding_fan/.mcfunction) は位置・角度・半径等と selector を受け、該当 entity に BoundingFan tag を付ける。[detect](../../TheSkyBlessing/data/lib/functions/bounding_fan/core/detect.m.mcfunction) は selector 文字列を macro で展開する。Damage や陣営の意味を幾何計算自体が決めるわけではない。

[Lawless Slashshot](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/object/2241.lawless_slashshot/detect_hit_entity/.mcfunction) は検出 tag を自身の命中判定へ変換する。[Clock Thunder](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/object/2248.clock_thunder/tick/thunder.mcfunction) は円柱の検出結果へ Damage を与え、検出 tag を解除する利用例である。

対象の陣営・除外条件は caller の selector、形状計算は lib、与える効果・一撃内の重複・tag の後片付けは利用側から追う。一時 tag は対象集合の受け渡しであり、自動で寿命を持つ戻り値ではない。

[rotatable_dxyz](../../TheSkyBlessing/data/lib/functions/rotatable_dxyz/m.mcfunction) の内部にある `^ ^ ^3` → 箱の向きへ変更 → `^4 ^ ^` → `distance=5..` は、3・4・5を使った内積の符号判定である。[each_plus](../../TheSkyBlessing/data/lib/functions/rotatable_dxyz/core/each_plus.mcfunction) では、判定面上の基準点から対象の足元へ向かう単位ベクトルを u、箱の軸の単位ベクトルを e とすると、対象から判定位置までの距離の二乗が `|3u + 4e|² = 25 + 24(u·e)` になる。距離が5以上ならその軸の外側として除外する。[each_minus](../../TheSkyBlessing/data/lib/functions/rotatable_dxyz/core/each_minus.mcfunction) は4の向きを反転して反対側を判定する。一見無関係な位置・向きの変更を連ねて、回転した箱の各面との位置関係を求めているため、距離5を箱の半径と解釈したり、個々の数値だけを変更したりしない。これはコードとベクトル式からの説明で、境界の浮動小数点誤差を実機検証したものではない。利用側では内部処理を複製せず、公開macroの中心・向き・半幅とselectorを渡す。

[bounding_fan の角度計算](../../TheSkyBlessing/data/lib/functions/bounding_fan/core/calc.mcfunction) は、角度Aの1/4をmarkerのyawへ入れ、原点から局所座標で1後退したPosのXから `sin(A/4)` を取得する。続く判定では、対象から扇の中心へ0.5、扇の正面へ0.5と移動した点から対象までの距離を調べる。対象方向と正面のなす角をψとすると、この距離は `|(f-d)/2| = sin(ψ/2)` なので、`sin(A/4)` 以下という距離判定で開き角Aの内側を選べる。三角関数のscore演算を省くための構成であり、A/4や二つの0.5を独立した調整値として変えない。半径・高さの条件は別に判定する。利用側は公開APIを使い、この説明は内部の角度判定を変更・レビューする際の根拠とする。

### 軸の反転で反射と滑り移動を作る

[reflection_bullet の反射](../../TheSkyBlessing/data/lib/functions/reflection_bullet/core/loop.mcfunction) は、原点へ移した実行位置から局所座標で2後退、対象軸の座標を0へ置換、前方へ1、原点へfacingという操作で向きの一成分だけを反転する。元の前方向を単位ベクトルfとすると、Xの処理で原点を向くベクトルは `(-fx, fy, fz)` になる。続くブロック判定で反射の要否を決め、X/Y/Zを順に処理する。原点への移動や2と1の組み合わせは幾何計算の一部であり、実体を原点へ往復させているわけではない。

[slide_move](../../TheSkyBlessing/data/lib/functions/slide_move/.mcfunction) の `data get ... 10000` → `store ... double 0.00005` は意図的にSpeedの半分を作る。[geometry](../../TheSkyBlessing/data/lib/functions/slide_move/core/geometry.m.mcfunction) で塞がれた軸の向きを反転し、反転後の半歩と元の向きの半歩を足すと、塞がれた成分は打ち消され、それ以外の成分は指定の距離だけ進む。逆数の `0.0001` へ直すと移動量が変わる。入口で実行者を実行位置・向きに揃え、末尾で元の向きを戻すため、entityの現在位置だけでなく呼出文脈も入力である。

### displayのRotationと見た目の向きを分ける

[rotate_display](../../TheSkyBlessing/data/lib/functions/rotate_display/.mcfunction) はdisplay自身を `Rotation:[0,90]` 相当へ固定し、呼出時の向きをtransformationの回転へ変換して見た目に反映する公開APIである。entityのRotationだけを見て向きが壊れていると判断しない。入力の制約は `scale[0] == scale[1]` で、異なるとせん断変形が起こるとAPIコメントに明記されている。[角度変換](../../TheSkyBlessing/data/lib/functions/rotate_display/core/marker.mcfunction) の取得倍率10000と格納倍率0.000001745は、固定小数点の復元に加えて度からラジアンへの近似換算を含むため、単純な逆数へ揃えない。

### 散布と速度には、物理 entity と論理値の境界がある

[チュートリアルの転移](../../TheSkyBlessing/data/world_manager/functions/area/00-08.tutorial-tp_gate.mcfunction) の `tp @s @s` は、行き先へのtpの前に移動の慣性を消す利用例で、この場面では視点の慣性リセットも許容している。視点を維持する往復tpとの使い分けは、DevSpaceの `docs/mcfunction-idioms.md`「実行位置を移動前の値として保持する」を参照する。

[forward_spreader/circle](../../TheSkyBlessing/data/lib/functions/forward_spreader/circle.mcfunction) は実行 entity の位置を前方のランダムな位置へ移す。結果は Return storage ではなく、移動後の位置に現れる。[Musket Matchlock](https://github.com/ProjectTSB/Asset/blob/8f661ea1003a0e519d9825c55e1dde0ce6edaf80/Asset/data/asset/functions/artifact/0005.musket_matchlock/trigger/3.main.mcfunction) は一時 marker を散布先へ移して弾の方向を作り、marker を片付ける。弾の所有者や寿命は散布部品の責務ではない。

[forward_spreader の反映処理](../../TheSkyBlessing/data/lib/functions/forward_spreader/core/fetch.mcfunction) が基準にするのは実行者のPosで、計算した変位をそこへ加える。呼出時の向きは使うが、`positioned` だけで実行位置を変えても散布の基準位置は変わらない。目の位置等を基準にしたいなら、marker自体を先にその位置へ置く。Spreadは直径として計算される。中間のscore計算にも桁の上限があるため、値を拡張するときは警告の有無だけでなく積・和と座標の倍率を確認する。

[spread_entity のplayer経路](../../TheSkyBlessing/data/lib/functions/spread_entity/core/player/.mcfunction) は、身代わりmarkerを移動前に `execute as` で実行者として保持してから、移動・プレイヤーのtp・markerのkillを続ける。コードコメントにある通り、移動先が未読込でも実行者を保持して扱うための構造である。移動後にtag付きselectorでmarkerを探し直す形へ整理しない。

[player_vector/get](../../TheSkyBlessing/data/api/functions/player_vector/get.mcfunction) が返すのは保存された PlayerPosDiff である。[位置補正と差分計算](../../TheSkyBlessing/data/player_manager/functions/pos_fix_and_calc_diff.mcfunction) が位置差や不連続な移動を処理し、[落下ダメージ](../../TheSkyBlessing/data/player_manager/functions/fall_damage/deal_damage/get_vars.mcfunction) 等が使う。生の Motion NBT と同一視しない。

速度を書き込む側も、[motion の player 経路](../../TheSkyBlessing/data/lib/functions/motion/core/xyz/player.mcfunction) は PlayerMotion の固定小数点 score を使い、非 player の Motion NBT 操作と分かれる。移動機能は、ゲーム上の強さや耐性の方針と、対象に速度を反映する方式を分けて変更する。

[motionの視線方向・非player経路](../../TheSkyBlessing/data/lib/functions/motion/core/looking/non-player.mcfunction) は、呼出時の回転から方向ベクトルを作り、Motion全体を上書きする。実行者のRotationを自動で取り直す処理でも、既存速度への加算でもない。呼出前の `facing`・`rotated` と、連続呼出しで前の速度が置換されることを確認する。

### ROM は数値アドレスに対する共有の参照窓

[rom/please](../../TheSkyBlessing/data/api/functions/rom/please.mcfunction) は 0〜65535 のアドレスを扱い、[provide](../../TheSkyBlessing/data/rom/functions/provide.mcfunction) が共有の `rom:_` の参照窓を組み替える。次の provide はその窓の参照対象を変える。名称から読み取り専用だと判断したり、取得した窓を独立した永続 handle として保持したりしない。

Mob/Object の継承などの領域上の意味は ROM の利用側が与える。新しいデータを置く場合はアドレスの所有と衝突を確認し、呼び出した別処理が窓を切り替える場合は、必要な再取得や退避を既存の利用規約に沿って行う。

## 実装・レビューで最初に決めること

1. 生成する型・既存個体・snapshot・slot・保存配列のどれを操作するか。
2. 結果が戻るのは storage、score、tag、entity の位置、実 inventory のどこか。
3. 識別子や Count は何を数え、どの区間まで有効か。
4. 対象の選択、効果の適用、保存内容の移管、後片付けを誰が担当するか。

各節は現行コードの契約を基準に読む。実機で確認した結論には該当する検証記録を示し、それ以外の式の導出・ユーザーが確認した意図・コード上の順序を、全経路の実機検証済みとは扱わない。
