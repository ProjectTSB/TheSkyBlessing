#> asset:mob/0273.hell_blade/move/face/floor
#
#
#
# @within function asset:mob/0273.hell_blade/move/face/

# 位置調整
    execute at @s[tag=7L.FaceWallUp] run tp @s ~ ~.125 ~
    execute at @s[tag=7L.FaceWallDown] run tp @s ^ ^-.125 ^-.25

# モデル適応
    data modify entity @s ArmorItems[3].tag.CustomModelData set value 20160

# タグ更新
    tag @s remove 7L.FaceCheck
    tag @s remove 7L.FaceWallUp
    tag @s remove 7L.FaceWallDown
    tag @s add 7L.FaceFloor


