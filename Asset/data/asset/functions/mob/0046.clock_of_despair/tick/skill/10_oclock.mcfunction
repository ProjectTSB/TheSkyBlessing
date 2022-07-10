#> asset:mob/0046.clock_of_despair/tick/skill/10_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# RE:RE: 歯車の恐怖
    execute if score @s 1A.LifeTime matches 2200 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/
    execute if score @s 1A.LifeTime matches 2200 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/
    execute if score @s 1A.LifeTime matches 2230 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/
    execute if score @s 1A.LifeTime matches 2260 run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/

# サンダー召喚
    execute if score @s 1A.LifeTime matches 2280 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 2320 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage