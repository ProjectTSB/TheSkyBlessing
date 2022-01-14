#> asset:mob/0220.vena_cana/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0220.vena_cana/hurt/1.trigger

# 演出
    playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 0.7 0.8 0
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.6 0.3 0.6 0 30 normal @a