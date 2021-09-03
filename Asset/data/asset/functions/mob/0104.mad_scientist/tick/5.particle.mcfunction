#> asset:mob/0104.mad_scientist/tick/5.particle
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/4.till_throw_potion

# 毒
    execute if entity @s[tag=2W.Poison] run particle dust 0 0.4 0 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

# 火
    execute if entity @s[tag=2W.Fire] run particle dust 0.8 0 0 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

# 水というか氷
    execute if entity @s[tag=2W.Water] run particle dust 0.5 1 1 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a

# 雷
    execute if entity @s[tag=2W.Thunder] run particle dust 1 1 0 1 ~ ~1.2 ~ 0.5 0.5 0.6 0 2 normal @a
