#> asset:mob/0046.clock_of_despair/tick/skill/10_oclock
#
# 金歯車 + 銀歯車 -> 銀歯車 -> 銀歯車 + 自機狙い雷
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# RE:RE: 歯車の恐怖
    execute if score @s 1A.LifeTime matches 2000 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/
    execute if score @s 1A.LifeTime matches 2000 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/5
    # execute if score @s 1A.LifeTime matches 2030 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8
    execute if score @s 1A.LifeTime matches 2060 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8

# サンダー召喚
    execute if score @s 1A.LifeTime matches 2080 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 2120 at @e[type=marker,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage