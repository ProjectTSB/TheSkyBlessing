#> asset:mob/0046.clock_of_despair/tick/skill/common/ball/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:90,Tags:["Object","1A.SkillBallAEC","1A.SkillMarker"]}

# 召喚者の反対方向を見る
    execute facing entity @s eyes run tp @e[type=area_effect_cloud,tag=1A.SkillBallAEC,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~180 ~

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 0