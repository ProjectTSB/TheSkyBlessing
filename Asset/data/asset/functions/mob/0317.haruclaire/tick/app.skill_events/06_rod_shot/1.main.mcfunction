#> asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/1.main
#
# アニメーションのイベントハンドラ 杖モード・射撃
# その場で射撃を行う．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：81tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/3.play_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 1..5 if entity @p[distance=..8] at @s rotated ~ 0 positioned ^ ^ ^-1 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 1..5 at @s rotated ~ 0 positioned ^ ^ ^-0.1 positioned ~ ~0.1 ~ rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 6..15 at @s rotated ~ 0 positioned ^ ^ ^-0.1 positioned ~ ~0.05 ~ rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 35..40 at @s positioned ~ ~0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 41..55 at @s positioned ~ ~-0.10 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 56..65 at @s positioned ~ ~0.02 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..5 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 予兆演出
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2

# 攻撃
    execute if score @s 8T.AnimationTimer matches 15 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/4.1.attack
    execute if score @s 8T.AnimationTimer matches 19 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/4.1.attack
    execute if score @s 8T.AnimationTimer matches 23 rotated ~ 0 positioned ^ ^1 ^1.7 facing entity @p feet run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/4.1.attack

# 終了
    execute if score @s 8T.AnimationTimer matches 82.. run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/2.end
