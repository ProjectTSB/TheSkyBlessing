#> asset:mob/1008.yellow_star/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/1008.yellow_star/death/1.trigger

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.6
    playsound entity.phantom.bite hostile @a ~ ~ ~ 1 0