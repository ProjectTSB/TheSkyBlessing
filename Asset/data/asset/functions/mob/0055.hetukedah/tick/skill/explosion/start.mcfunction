#> asset:mob/0055.hetukedah/tick/skill/explosion/start
#
# ダッシュスタート
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 演出
    playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 2
    particle minecraft:flame ~ ~1.6 ~ 0.3 0.3 0.3 0.1 50
    particle minecraft:lava ~ ~1.6 ~ 0.3 0.3 0.3 0.1 10