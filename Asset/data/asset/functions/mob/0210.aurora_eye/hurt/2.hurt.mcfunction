#> asset:mob/0210.aurora_eye/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0210.aurora_eye/hurt/1.trigger

# 演出
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    particle dust_color_transition 0 0.235 1 1 0.000 1.000 0.886 ~ ~1.68 ~ 0.4 0.4 0.4 1 20 normal
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.68 ~ 0.4 0.4 0.4 1 20 normal
