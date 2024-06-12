#> asset:mob/0055.hetukedah/tick/skill/explosion/dash
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 演出
    execute positioned ~ ~1.6 ~ run particle minecraft:dust 1 0.5 0 1 ^ ^ ^ 0.5 0.5 0.5 0 15 force @a[distance=..30]
    execute positioned ~ ~1.6 ~ run particle minecraft:flame ^ ^ ^ 0.5 0.5 0.5 0 5 force @a[distance=..30]

# エフェクト
    effect give @s speed 1 6 true
