#> asset:mob/0273.hell_blade/chase/rotate/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# タイマー
    scoreboard players add @s 7L.Timer 1

# フレーム分岐
    execute if score @s 7L.Timer matches -9 at @s run function asset:mob/0273.hell_blade/chase/rotate/-9
    execute if score @s 7L.Timer matches -7..-2 at @s[tag=7L.RotateLeft] align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~-15 ~
    execute if score @s 7L.Timer matches -7..-2 at @s[tag=7L.RotateRight] align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~15 ~

    execute if score @s 7L.Timer matches 0 at @s run function asset:mob/0273.hell_blade/chase/rotate/0

# 落下チェック
    execute at @s align xyz positioned ~.5 ~.5 ~.5 run function asset:mob/0273.hell_blade/unstuck/


