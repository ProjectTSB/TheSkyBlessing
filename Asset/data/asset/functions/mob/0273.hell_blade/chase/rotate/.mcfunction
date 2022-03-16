#> asset:mob/0273.hell_blade/chase/rotate/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# タイマー
    scoreboard players add @s 7L.Timer 1

# フレーム分岐


    execute if score @s 7L.Timer matches 0 run function asset:mob/0273.hell_blade/chase/rotate/0





