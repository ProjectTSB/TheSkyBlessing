#> asset:mob/0046.clock_of_despair/tick/skill/4_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 400 run playsound minecraft:block.bell.use master @a
# ビーム四本投射
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 401 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~90 ~
# ビーム回転
    execute if score @s 1A.LifeTime matches 421..499 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~2 ~

# 雷もする
# サンダー召喚
    execute if score @s 1A.LifeTime matches 450 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 460 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
# サンダー召喚
    execute if score @s 1A.LifeTime matches 460 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 470 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
# サンダー召喚
    execute if score @s 1A.LifeTime matches 480 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 490 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage