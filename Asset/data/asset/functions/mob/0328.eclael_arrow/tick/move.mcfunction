#> asset:mob/0328.eclael_arrow/tick/move
#
# Mobのtick時の処理
#
# @within function asset:mob/0328.eclael_arrow/tick/2.tick

# 演出
    execute if score @s 94.Timer matches ..2 positioned ^ ^ ^ run particle dust 100000000 100000000 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s 94.Timer matches ..2 positioned ^ ^ ^0.5 run particle dust 100000000 100000000 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s 94.Timer matches 3..4 positioned ^ ^ ^ run particle dust 100000000 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s 94.Timer matches 3..4 positioned ^ ^ ^0.5 run particle dust 100000000 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s 94.Timer matches 5.. positioned ^ ^ ^ run particle dust 100000000 1 100000000 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s 94.Timer matches 5.. positioned ^ ^ ^0.5 run particle dust 100000000 1 100000000 2 ~ ~ ~ 0.1 0.1 0.1 0 3

# プレイヤーが近くにいる場合，ダメージ発生
    execute if score @s 94.DamageInterval matches 1.. run scoreboard players remove @s 94.DamageInterval 1
    execute if score @s 94.DamageInterval matches ..0 positioned ~ ~-1 ~ if entity @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function asset:mob/0328.eclael_arrow/tick/attack
    execute if score @s 94.DamageInterval matches ..0 positioned ~ ~ ~ if entity @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function asset:mob/0328.eclael_arrow/tick/attack
