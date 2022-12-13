#> asset:mob/0046.clock_of_despair/tick/skill/7_oclock
#
# 金歯車 + 銀歯車 -> 銀歯車 -> 銀歯車
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# RE: 歯車の恐怖
    execute if score @s 1A.LifeTime matches 1400 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/
    execute if score @s 1A.LifeTime matches 1400 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/5
    # execute if score @s 1A.LifeTime matches 1430 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/
    execute if score @s 1A.LifeTime matches 1460 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8