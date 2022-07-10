#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}
summon marker ~ ~ ~ {Tags:["1A.SkillMarker","1A.GearGold","GearInit","Object","Uninterferable"]}

execute as @e[type=marker,tag=GearInit,distance=..0.1] run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/spread_summon/spread
tag @e[type=marker,tag=GearInit,distance=..14] remove GearInit