#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/5
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"]}

execute as @e[type=marker,tag=GearInit,distance=..0.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/spread
tag @e[type=marker,tag=GearInit,distance=..14] remove GearInit