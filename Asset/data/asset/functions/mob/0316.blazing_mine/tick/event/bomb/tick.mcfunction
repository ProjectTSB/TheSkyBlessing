#> asset:mob/0316.blazing_mine/tick/event/bomb/tick
#
# 起爆前の動作
#
# @within function asset:mob/0316.blazing_mine/tick/2.tick


# 起爆前演出
    execute if score @s 8S.Tick matches 10 run function asset:mob/0316.blazing_mine/tick/event/bomb/inflate
    execute if score @s 8S.Tick matches 12 run function asset:mob/0316.blazing_mine/tick/event/bomb/shrink

    execute if score @s 8S.Tick matches 20 run function asset:mob/0316.blazing_mine/tick/event/bomb/inflate
    execute if score @s 8S.Tick matches 22 run function asset:mob/0316.blazing_mine/tick/event/bomb/shrink

    execute if score @s 8S.Tick matches 30 run function asset:mob/0316.blazing_mine/tick/event/bomb/inflate
    execute if score @s 8S.Tick matches 32 run function asset:mob/0316.blazing_mine/tick/event/bomb/shrink

# しばらくすると爆発
    execute if score @s 8S.Tick matches 40 run function asset:mob/0316.blazing_mine/tick/event/bomb/explosion

# リセット
    scoreboard players reset $Interval Temporary
    scoreboard players reset $Interval2 Temporary
