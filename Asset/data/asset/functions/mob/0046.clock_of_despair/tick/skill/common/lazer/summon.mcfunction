#> asset:mob/0046.clock_of_despair/tick/skill/common/lazer/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/tick

#> Val
# @private
#declare tag LazerInit

summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.WallLazer","LazerInit","Object","Uninterferable"]}
tp @e[type=marker,tag=LazerInit,distance=..0.01] ~ ~ ~ ~ 0
tag @e[type=marker,tag=LazerInit,distance=..0.01] remove LazerInit