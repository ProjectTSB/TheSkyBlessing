#> asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:90,Tags:["Object","1A.SkillFireMaker","1A.SkillMarker"]}
# 演出
    playsound item.firecharge.use hostile @a ~ ~ ~ 1 1.4