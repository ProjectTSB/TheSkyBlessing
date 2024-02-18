#> asset:mob/0055.hetukedah/tick/skill/explosion/warp
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/explosion/tick

# 演出
    particle explosion ~ ~1.3 ~ 0 0 0 0 0 force @a[distance=..30]
    particle end_rod ~ ~1.3 ~ 0 0 0 0.1 25 force @a[distance=..30]
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.5 1