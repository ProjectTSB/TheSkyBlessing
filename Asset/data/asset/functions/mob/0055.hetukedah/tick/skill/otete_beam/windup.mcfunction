#> asset:mob/0055.hetukedah/tick/skill/otete_beam/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/otete_beam/tick

# こっち見る
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 演出
    particle minecraft:dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 100 force @a[distance=..30]
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1.5 1.5

# NoAIを戻す
    data merge entity @s {NoAI:1b}