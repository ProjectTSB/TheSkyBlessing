#> asset:mob/0074.watermelon_bomber/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0074.watermelon_bomber/hurt/1.trigger

# 演出
    playsound entity.player.splash hostile @a ~ ~ ~ 0.8 0.8 0
    particle block melon ~ ~1.3 ~ 0.3 0.5 0.3 0 20 normal @a
    particle dust 1 0.141 0.141 1 ~ ~1.3 ~ 0.4 0.5 0.4 0 10 normal @a
