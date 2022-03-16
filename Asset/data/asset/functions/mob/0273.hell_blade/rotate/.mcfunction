#> asset:mob/0273.hell_blade/rotate/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# south
    execute as @s[y_rotation=0] unless entity @p[dx=0,dy=3] positioned ~-16 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=0] unless entity @p[dx=0,dy=3] positioned ~1 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/rotate/left

# west
    execute as @s[y_rotation=90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~-16 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~1 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/rotate/left

# north
    execute as @s[y_rotation=180] unless entity @p[dx=0,dy=3] positioned ~1 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=180] unless entity @p[dx=0,dy=3] positioned ~-16 ~ ~ if entity @a[dx=16,dy=3] run function asset:mob/0273.hell_blade/rotate/left

# east
    execute as @s[y_rotation=-90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~1 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=-90] unless entity @p[dx=0,dy=3] positioned ~ ~ ~-16 if entity @a[dy=3,dz=16] run function asset:mob/0273.hell_blade/rotate/left
