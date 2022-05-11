#> asset:mob/1004.tultaria/tick/6.starfury_attack/4.vfx
#
#
#
# @within function asset:mob/1004.tultaria/tick/6.starfury_attack/1.starfury_attack

# 演出
    #playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..50] ~ ~ ~ 1 2 1
    execute at @a[distance=..60] run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 2 0.7
    execute at @a[distance=..60] run playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 2 1

    execute at @e[type=area_effect_cloud,tag=S2.Wait] run particle end_rod ~ ~ ~ 0 0 0 0.1 1 force