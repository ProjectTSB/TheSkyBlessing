#> asset:mob/0046.clock_of_despair/tick/skill/5_oclock
#
# 乱発雷
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 超ランダムで雷
    execute if score @s 1A.LifeTime matches 1010..1045 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon
# 発破
    execute if score @s 1A.LifeTime matches 1060 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 超ランダムで雷 その2
    execute if score @s 1A.LifeTime matches 1070..1105 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon
# 発破 その2
    execute if score @s 1A.LifeTime matches 1120 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# 超ランダムで雷 その3
    execute if score @s 1A.LifeTime matches 1130..1165 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/spread_summon
# 発破 その3
    execute if score @s 1A.LifeTime matches 1180 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage