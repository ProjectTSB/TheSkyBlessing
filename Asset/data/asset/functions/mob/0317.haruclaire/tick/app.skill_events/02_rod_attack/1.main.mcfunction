#> asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main
#
# アニメーションのイベントハンドラ 杖モード・杖殴り
# プレイヤーに近づく．
# 杖で2回殴った後，杖をぶん投げる．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## 移動
# animated javaアニメーション再生 (長さ：51tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/3.1.play_move_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..9 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 1..9 as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
    execute if score @s 8T.AnimationTimer matches 10..51 facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 移動
    execute if score @s 8T.AnimationTimer matches 8 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 10..51 at @s positioned ^ ^ ^0.6 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# ある程度プレイヤーに近づいた場合，殴りモーションに移行
    execute if score @s 8T.AnimationTimer matches 10..51 positioned ^ ^ ^1 if entity @a[distance=..2] run scoreboard players set @s 8T.AnimationTimer 52

## ぶん殴り
# animated javaアニメーション再生 (長さ：151tick)
    execute if score @s 8T.AnimationTimer matches 52 run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/3.2.play_attack_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 52..57 at @s positioned ~ ~0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# なぎ払い
    # 攻撃
        execute if score @s 8T.AnimationTimer matches 68 run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/4.1.attack_swing
    # 移動
        execute if score @s 8T.AnimationTimer matches 65..68 at @s positioned ^ ^ ^0.2 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 突き
    # プレイヤーの方を向く
        execute if score @s 8T.AnimationTimer matches 79..80 at @s facing entity @p feet run tp @s ~ ~ ~ ~ 0
    # 移動
        execute if score @s 8T.AnimationTimer matches 79..85 at @s positioned ^ ^ ^-0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
        execute if score @s 8T.AnimationTimer matches 89..93 at @s positioned ^ ^ ^0.8 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
        execute if score @s 8T.AnimationTimer matches 94..98 at @s positioned ^ ^0.05 ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    # 攻撃
        execute if score @s 8T.AnimationTimer matches 89 run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/4.2.attack_spear
    # 効果音・演出
        execute if score @s 8T.AnimationTimer matches 89..95 run particle electric_spark ^ ^2 ^-1 0.5 0.5 0.5 0.2 3
        execute if score @s 8T.AnimationTimer matches 89 positioned ~ ~1.5 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/5.2.particle_spear_move
        execute if score @s 8T.AnimationTimer matches 91 positioned ~ ~1.5 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/5.2.particle_spear_move
        execute if score @s 8T.AnimationTimer matches 93 positioned ~ ~1.5 ~ run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/5.2.particle_spear_move
        execute if score @s 8T.AnimationTimer matches 89 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.1
        execute if score @s 8T.AnimationTimer matches 89 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.9
        execute if score @s 8T.AnimationTimer matches 93 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9
# 杖投げ
    # プレイヤーの方を向く
        execute if score @s 8T.AnimationTimer matches 102 facing entity @p feet run tp @s ~ ~ ~ ~ ~
    # 宙返り移動
        execute if score @s 8T.AnimationTimer matches 105 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
        execute if score @s 8T.AnimationTimer matches 105..108 at @s rotated ~ 0 positioned ^ ^0.3 ^-0.5 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
        execute if score @s 8T.AnimationTimer matches 109..114 at @s rotated ~ 0 positioned ^ ^-0.1 ^-0.3 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
        execute if score @s 8T.AnimationTimer matches 115..117 at @s rotated ~ 0 positioned ^ ^-0.2 ^0.56 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
        execute if score @s 8T.AnimationTimer matches 118..123 at @s rotated ~ 0 positioned ^ ^0.1 ^0.4 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
        execute if score @s 8T.AnimationTimer matches 124..135 at @s rotated ~ 0 positioned ^ ^0.01 ^0.05 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    # 攻撃
        execute if score @s 8T.AnimationTimer matches 122 run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/4.3.attack_throw
        execute if score @s 8T.AnimationTimer matches 126 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    # 帽子キャッチ
        execute if score @s 8T.AnimationTimer matches 139 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.2
        execute if score @s 8T.AnimationTimer matches 184 run playsound block.grass.step hostile @a ~ ~ ~ 1 1.2
# 終了
    execute if score @s 8T.AnimationTimer matches 203.. run function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/2.end
