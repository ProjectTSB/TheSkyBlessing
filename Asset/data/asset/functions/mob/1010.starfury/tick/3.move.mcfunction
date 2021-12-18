#> asset:mob/1010.starfury/tick/3.move
#
#
#
# @within function asset:mob/1010.starfury/tick/2.tick

# particle
    execute if entity @s[tag=S2.Fire] run particle flame ~ ~ ~ 0 0 0 0 1
    execute if entity @s[tag=S2.Water] run particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0 0 0 1 1
    execute if entity @s[tag=S2.Thunder] run particle scrape ~ ~ ~ 0 0 0 0 1

# TP
    tp ^ ^ ^1

# ダメージ
    execute if entity @p[distance=..1] run function asset:mob/1010.starfury/tick/4.damage