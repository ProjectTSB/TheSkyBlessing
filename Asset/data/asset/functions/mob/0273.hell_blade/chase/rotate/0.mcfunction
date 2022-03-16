#> asset:mob/0273.hell_blade/chase/rotate/0
#
#
#
# @within function asset:mob/0273.hell_blade/chase/rotate/

# 回転
    execute at @s[tag=7L.RotateLeft] align xyz positioned ~.5 ~ ~.5 rotated ~-90 0 run tp @s ^ ^ ^-.375 ~ ~
    execute at @s[tag=7L.RotateRight] align xyz positioned ~.5 ~ ~.5 rotated ~90 0 run tp @s ^ ^ ^-.375 ~ ~
    execute run tag @s remove 7L.RotateLeft
    execute run tag @s remove 7L.RotateRight

# 向きのスコアを更新
    execute store result score @s 7L.FallingRotation run data get entity @s Rotation[0] 1
