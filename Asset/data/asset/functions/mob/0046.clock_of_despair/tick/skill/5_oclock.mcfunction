#> asset:mob/0046.clock_of_despair/tick/skill/5_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 超ランダムで雷
    execute if score @s 1A.LifeTime matches 510..535 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon
# 発破
    execute if score @s 1A.LifeTime matches 545 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
# 超ランダムで雷 その2
    execute if score @s 1A.LifeTime matches 545..570 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon
# 発破 その2
    execute if score @s 1A.LifeTime matches 580 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage