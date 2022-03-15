#> asset:mob/0273.hell_blade/move/face/floor
#
#
#
# @within function asset:mob/0273.hell_blade/move/face/

# 位置調整
    execute at @s[tag=7L.FaceWallUp] run tp @s ~ ~.125 ~
    execute at @s[tag=7L.FaceWallDown] run tp @s ^ ^-.125 ^-.25

# 向きのスコアを更新
    execute store result score @s[tag=7L.FaceWallDown] 7L.FallingRotation run data get entity @s Rotation[0] 1

# タグ更新
    tag @s remove 7L.FaceCheck
    tag @s remove 7L.FaceWallUp
    tag @s remove 7L.FaceWallDown
    tag @s add 7L.FaceFloor


