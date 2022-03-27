#> asset:mob/0046.clock_of_despair/tick/skill/8_oclock/8_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 800 run playsound minecraft:block.bell.use master @a
# ビーム四本投射
    execute if score @s 1A.LifeTime matches 801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_summon
    execute if score @s 1A.LifeTime matches 801 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~45 ~
# ビーム回転
    execute if score @s 1A.LifeTime matches 801..810 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~2 ~
    execute if score @s 1A.LifeTime matches 811..820 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s 1A.LifeTime matches 821..830 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~6 ~
    execute if score @s 1A.LifeTime matches 831..840 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~8 ~
    execute if score @s 1A.LifeTime matches 841..850 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~10 ~
    execute if score @s 1A.LifeTime matches 851..860 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~12 ~