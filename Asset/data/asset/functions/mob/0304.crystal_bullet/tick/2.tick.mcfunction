#> asset:mob/0304.crystal_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0304.crystal_bullet/tick/1.trigger


# score増やす
    scoreboard players add @s 8G.LifeTime 1

# 3回実行
    function asset:mob/0304.crystal_bullet/tick/move
    execute at @s run function asset:mob/0304.crystal_bullet/tick/move
    execute at @s run function asset:mob/0304.crystal_bullet/tick/move

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] add 8G.Target
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run function asset:mob/0304.crystal_bullet/tick/damage

# 死ぬ
    execute if score @s 8G.LifeTime matches 100.. run kill @s