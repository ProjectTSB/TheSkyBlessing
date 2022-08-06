#> asset:mob/0301.sinful_thoughts/tick/3.jump/3.pounce
#
# 6回繰り返す
#
# @within function asset:mob/0301.sinful_thoughts/tick/3.jump/1.jump

# 飛びかかる
    execute if score @s 8D.Tick matches 15..19 run function asset:mob/0301.sinful_thoughts/tick/3.jump/tacle
    execute if score @s 8D.Tick matches 15..19 run function asset:mob/0301.sinful_thoughts/tick/3.jump/tacle


# 演出
    execute if score @s 8D.Tick matches 20 run playsound entity.phantom.bite hostile @a ~ ~ ~ 1 0