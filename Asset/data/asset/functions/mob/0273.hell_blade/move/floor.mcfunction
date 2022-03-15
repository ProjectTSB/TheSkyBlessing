#> asset:mob/0273.hell_blade/move/floor
#
#
#
# @within function asset:mob/0273.hell_blade/move/

# 前進
    tp @s ^ ^ ^.25

# タイミングのスコア
    scoreboard players add @s 7L.Timer 1
    execute if score @s 7L.Timer matches 4.. run scoreboard players set @s 7L.Timer 0
