#> asset:mob/0055.hetukedah/tick/skill/otete_beam/windup
#
#
#
# @within function
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/tick
#   asset:mob/0055.hetukedah/tick/skill/otete_beam/tick_hard

# こっち見る
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 演出
    particle minecraft:dust 1 1 0 2 ~ ~1 ~ 0.5 0.5 0.5 0 100 force @a[distance=..30]
    playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.charge hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 2

# NoAIにする
    data merge entity @s {NoAI:1b}