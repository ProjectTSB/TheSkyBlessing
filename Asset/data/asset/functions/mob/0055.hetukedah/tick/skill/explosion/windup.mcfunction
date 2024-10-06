#> asset:mob/0055.hetukedah/tick/skill/explosion/windup
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# こっち見る
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 演出
    particle minecraft:dust 1 0.4 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 100 force @a[distance=..30]
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2