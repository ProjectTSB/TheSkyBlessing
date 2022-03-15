#> asset:mob/0273.hell_blade/rotate/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# south
    execute as @s[y_rotation=0] positioned ~-16 ~ ~ if entity @a[dx=16] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=0] positioned ~1 ~ ~ if entity @a[dx=16] run function asset:mob/0273.hell_blade/rotate/left

# west
    execute as @s[y_rotation=90] positioned ~ ~ ~-16 if entity @a[dz=16] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=90] positioned ~ ~ ~1 if entity @a[dz=16] run function asset:mob/0273.hell_blade/rotate/left

# north
    execute as @s[y_rotation=180] positioned ~1 ~ ~ if entity @a[dx=16] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=180] positioned ~-16 ~ ~ if entity @a[dx=16] run function asset:mob/0273.hell_blade/rotate/left

# east
    execute as @s[y_rotation=-90] positioned ~ ~ ~1 if entity @a[dz=16] run function asset:mob/0273.hell_blade/rotate/right
    execute as @s[y_rotation=-90] positioned ~ ~ ~-16 if entity @a[dz=16] run function asset:mob/0273.hell_blade/rotate/left

# スコアから向きに代入する
#    data modify entity @s Rotation set value [0.0f,0.0f]
#    execute store result entity @s Rotation[0] float 1 run scoreboard players get @s 7L.FallingRotation

