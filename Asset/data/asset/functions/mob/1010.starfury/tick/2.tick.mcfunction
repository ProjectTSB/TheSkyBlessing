#> asset:mob/1010.starfury/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1010.starfury/tick/1.trigger

# particle
    execute if entity @s[tag=S2.Fire] run particle minecraft:dust 1000000000 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
    execute if entity @s[tag=S2.Water] run particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0 0 0 1 1 force @a[distance=..100]
    execute if entity @s[tag=S2.Thunder] run particle dust 10000000000 10000000000 1 1 ~ ~ ~ 0 0 0 1 1 force @a[distance=..100]
    particle electric_spark ~ ~ ~ 0 0 0 0.1 1 force @a

# タグがある状態なら実行
    execute unless entity @s[tag=S2.Wait] at @s run function asset:mob/1010.starfury/tick/3.move
    execute unless entity @s[tag=S2.Wait] at @s run function asset:mob/1010.starfury/tick/3.move
    execute unless entity @s[tag=S2.Wait] at @s run function asset:mob/1010.starfury/tick/3.move
    execute unless entity @s[tag=S2.Wait] at @s run function asset:mob/1010.starfury/tick/3.move