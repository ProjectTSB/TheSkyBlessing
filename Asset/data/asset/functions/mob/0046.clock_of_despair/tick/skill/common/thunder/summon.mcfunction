#> asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:90,Tags:["Object","1A.SkillThunderMaker","1A.SkillMarker"]}
# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0.3