#> asset:mob/0273.hell_blade/chase/rotate/0
#
#
#
# @within function asset:mob/0273.hell_blade/chase/rotate/

# 回転
    execute align xyz positioned ~.5 ~ ~.5 run tp @s ^ ^ ^-.375 ~ ~
    tag @s remove 7L.RotateLeft
    tag @s remove 7L.RotateRight

# 向きのスコアを更新
    execute store result score @s 7L.FallingRotation run data get entity @s Rotation[0] 1

# クールタイム
    scoreboard players set @s 7L.RotateTimer 3

# SFX
    playsound block.piston.extend hostile @a ~ ~ ~ 1 2

# モデル適応
    data modify entity @s ArmorItems[3].tag.CustomModelData set value 20160
