#> asset:mob/0273.hell_blade/chase/check
#
#
#
# @within function asset:mob/0273.hell_blade/move/

# south
    execute as @s[y_rotation=0] unless entity @p[dx=0,dy=3] positioned ~-16 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=0] unless entity @p[dx=0,dy=3] positioned ~1 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/chase/left

# west
    execute as @s[y_rotation=90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~-16 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~1 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/chase/left

# north
    execute as @s[y_rotation=180] unless entity @p[dx=0,dy=3] positioned ~1 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=180] unless entity @p[dx=0,dy=3] positioned ~-16 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/chase/left

# east
    execute as @s[y_rotation=-90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~1 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/chase/right
    execute as @s[y_rotation=-90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~-16 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/chase/left
