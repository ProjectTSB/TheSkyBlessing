#> asset:mob/0046.clock_of_despair/tick/skill/4_oclock/4_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active


# ビーム四本投射
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
# ビーム回転
    execute if score @s 1A.LifeTime matches 421..499 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~2 ~
