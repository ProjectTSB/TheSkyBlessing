#> asset:mob/0273.hell_blade/move/face/wall/up
#
#
#
# @within function asset:mob/0273.hell_blade/move/face/
#execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b}
# 位置調整
    execute at @s[tag=7L.FaceFloor] run tp @s ~ ~-.125 ~
    execute at @s[tag=7L.FaceCeiling] run tp @s ^ ^.875 ^-.25

# モデル適応
    data modify entity @s ArmorItems[3].tag.CustomModelData set value 20162

# タグ更新
    tag @s remove 7L.FaceCheck
    tag @s remove 7L.FaceFloor
    tag @s remove 7L.FaceCeiling
    tag @s add 7L.FaceWallUp
