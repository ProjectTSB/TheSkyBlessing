#> asset:mob/0055.hetukedah/tick/6.speedup
#
# 移動速度上がるの
#
# @within function asset:mob/0055.hetukedah/tick/3.skill

# 演出
    playsound entity.wither.shoot hostile @a ~ ~ ~ 1 2
    particle end_rod ~ ~1 ~ 0 0 0 0.4 100
# エフェクト
    effect give @s speed 5 6