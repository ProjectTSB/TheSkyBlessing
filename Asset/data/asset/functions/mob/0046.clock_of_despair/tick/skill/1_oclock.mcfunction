#> asset:mob/0046.clock_of_despair/tick/skill/1_oclock
#
# 銀歯車 -> 銀歯車 -> 銀歯車
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 歯車の洗礼
    execute if score @s 1A.LifeTime matches 200 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8
    # execute if score @s 1A.LifeTime matches 230 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8
    execute if score @s 1A.LifeTime matches 260 positioned ~ ~0.1 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8