#> asset:mob/0124.skull_harpy/tick/2.1.motion
#
#
#
# @within function asset:mob/0124.skull_harpy/tick/2.tick
#> private
# @private
    #declare score_holder $VectorMagnitude

# 突進する
    scoreboard players set $VectorMagnitude Lib 50
    execute facing entity @p eyes rotated ~ ~-10 run function lib:motion/

# リセット
    scoreboard players reset $VectorMagnitude
# スコアを消す
    scoreboard players reset @s 3G.Tick