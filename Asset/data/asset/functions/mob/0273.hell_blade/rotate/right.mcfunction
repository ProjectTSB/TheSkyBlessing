#> asset:mob/0273.hell_blade/rotate/right
#
#
#
# @within function asset:mob/0273.hell_blade/rotate/

# 右に回転
    execute at @s align xyz positioned ~.5 ~ ~.5 rotated ~90 0 run tp @s ^ ^ ^-.125 ~ ~

# 向きのスコアを更新
    execute store result score @s 7L.FallingRotation run data get entity @s Rotation[0] 1

# クールタイム
    scoreboard players set @s 7L.RotateTimer 3
