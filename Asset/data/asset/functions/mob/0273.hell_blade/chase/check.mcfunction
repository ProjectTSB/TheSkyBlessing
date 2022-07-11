#> asset:mob/0273.hell_blade/chase/check
#
#
#
# @within function asset:mob/0273.hell_blade/move/

# south
    execute as @s[y_rotation=0] unless entity @p[dx=0,dy=4] positioned ~-16 ~ ~ if entity @a[dx=15,dy=4] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=0] unless entity @p[dx=0,dy=4] positioned ~1 ~ ~ if entity @a[dx=15,dy=4] run function asset:mob/0273.hell_blade/chase/left

# west
    execute as @s[y_rotation=90] unless entity @p[dx=0,dy=4] positioned ~ ~ ~-16 if entity @a[dy=4,dz=15] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=90] unless entity @p[dx=0,dy=4] positioned ~ ~ ~1 if entity @a[dy=4,dz=15] run function asset:mob/0273.hell_blade/chase/left

# north
    execute as @s[y_rotation=180] unless entity @p[dx=0,dy=4] positioned ~1 ~ ~ if entity @a[dx=15,dy=4] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=180] unless entity @p[dx=0,dy=4] positioned ~-16 ~ ~ if entity @a[dx=15,dy=4] run function asset:mob/0273.hell_blade/chase/left

# east
    execute as @s[y_rotation=-90] unless entity @p[dx=0,dy=4] positioned ~ ~ ~1 if entity @a[dy=4,dz=15] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=-90] unless entity @p[dx=0,dy=4] positioned ~ ~ ~-16 if entity @a[dy=4,dz=15] run function asset:mob/0273.hell_blade/chase/left
