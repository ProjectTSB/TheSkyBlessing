#> asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

#> Val
# @private
#declare tag ClockInit

summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.WallLazerClock","ClockInit","Object","Uninterferable"]}
tp @e[type=marker,tag=ClockInit,distance=..0.01] ~ ~ ~ ~-90 ~
tag @e[type=marker,tag=ClockInit,distance=..0.01] remove ClockInit