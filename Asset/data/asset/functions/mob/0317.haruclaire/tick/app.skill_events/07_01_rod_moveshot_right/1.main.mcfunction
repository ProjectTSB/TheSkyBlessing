#> asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/1.main
#
# アニメーションのイベントハンドラ 杖モード・移動射撃・右
# 右方向に飛びながら射撃を行う．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：106tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/3.play_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 1..5 if entity @p[distance=..8] at @s rotated ~ 0 run tp @s ^ ^ ^-0.5
    execute if score @s 8T.AnimationTimer matches 1..5 rotated ~ 0 positioned ^-0.2 ^ ^ rotated ~-1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 6..14 rotated ~ 0 positioned ^-0.6 ^ ^0.1 rotated ~-3 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 15..30 rotated ~ 0 positioned ^-0.2 ^ ^ rotated ~-1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 31..40 rotated ~ 0 positioned ^-0.6 ^0.2 ^0.3 rotated ~-3 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 41..45 rotated ~ 0 positioned ^-0.2 ^0.05 ^0.1 rotated ~-2 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 46..55 rotated ~ 0 positioned ^-0.3 ^-0.1 ^0.1 rotated ~-1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 56..60 rotated ~ 0 positioned ^-0.1 ^-0.2 ^ rotated ~-1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 61..67 rotated ~ 0 positioned ^-0.05 ^ ^ rotated ~ ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 80..95 rotated ~ 0 positioned ^ ^0.05 ^ rotated ~ ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..5 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 15..30 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 41..50 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 演出
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 31 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 61 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 83 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 2
    execute if score @s 8T.AnimationTimer matches 89 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 2

# 攻撃
    execute if score @s 8T.AnimationTimer matches 17 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack
    execute if score @s 8T.AnimationTimer matches 20 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack
    execute if score @s 8T.AnimationTimer matches 23 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack
    execute if score @s 8T.AnimationTimer matches 41 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack
    execute if score @s 8T.AnimationTimer matches 44 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack
    execute if score @s 8T.AnimationTimer matches 47 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/4.1.attack

# 軌跡
    execute if score @s 8T.AnimationTimer matches 6..14 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1
    execute if score @s 8T.AnimationTimer matches 31..55 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

# 終了
    execute if score @s 8T.AnimationTimer matches 107.. run function asset:mob/0317.haruclaire/tick/app.skill_events/07_01_rod_moveshot_right/2.end
