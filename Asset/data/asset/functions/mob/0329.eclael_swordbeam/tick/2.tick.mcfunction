#> asset:mob/0329.eclael_swordbeam/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0329.eclael_swordbeam/tick/1.trigger

# 演出
    execute rotated ~90 ~-40 run function asset:mob/0329.eclael_swordbeam/tick/particle

# 移動・攻撃処理
    execute positioned ^ ^ ^ run function asset:mob/0329.eclael_swordbeam/tick/move
    execute positioned ^ ^ ^1 run function asset:mob/0329.eclael_swordbeam/tick/move
    tp @s ^ ^ ^1

# 消去
    scoreboard players add @s 95.Timer 1
    execute if score @s 95.Timer matches 30.. run kill @s
