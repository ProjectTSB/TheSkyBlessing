#> asset:mob/0273.hell_blade/move/face/wall/down
#
#
#
# @within function asset:mob/0273.hell_blade/move/face/

# 位置調整
    execute at @s[tag=7L.FaceFloor] run tp @s ^ ^.125 ^.25 ~180 0
    execute at @s[tag=7L.FaceCeiling] run tp @s ^ ^1.125 ^

# 向きのスコアを更新
    execute store result score @s[tag=7L.FaceFloor] 7L.FallingRotation run data get entity @s Rotation[0] 1

# タグ更新
    tag @s remove 7L.FaceCheck
    tag @s remove 7L.FaceFloor
    tag @s remove 7L.FaceCeiling
    tag @s add 7L.FaceWallDown
