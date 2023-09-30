#> asset:mob/0328.eclael_arrow/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0328.eclael_arrow/tick/1.trigger

# 演出
    execute if score @s 94.Timer matches ..2 run function asset:mob/0328.eclael_arrow/tick/particle_ring_0
    execute if score @s 94.Timer matches 3..4 run function asset:mob/0328.eclael_arrow/tick/particle_ring_1
    execute if score @s 94.Timer matches 5.. run function asset:mob/0328.eclael_arrow/tick/particle_ring_2

# 移動・攻撃処理
    execute positioned ^ ^ ^ run function asset:mob/0328.eclael_arrow/tick/move
    execute positioned ^ ^ ^1 run function asset:mob/0328.eclael_arrow/tick/move
    execute positioned ^ ^ ^2 run function asset:mob/0328.eclael_arrow/tick/move
    execute positioned ^ ^ ^3 run function asset:mob/0328.eclael_arrow/tick/move
    execute positioned ^ ^ ^4 run function asset:mob/0328.eclael_arrow/tick/move
    tp @s ^ ^ ^5

# 消去
    scoreboard players add @s 94.Timer 1
    execute if score @s 94.Timer matches 8.. run kill @s
