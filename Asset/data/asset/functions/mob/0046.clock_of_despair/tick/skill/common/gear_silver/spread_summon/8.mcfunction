#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/8
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}
summon armor_stand ~ ~10000 ~ {NoGravity:1b,Silent:0b,Invulnerable:1b,Invisible:1b,Tags:["1A.SkillMarker","1A.GearSilver","GearInit","Object","Uninterferable"],DisabledSlots:4144959}

execute positioned ~ ~10000 ~ as @e[type=armor_stand,tag=GearInit,distance=..0.1] positioned ~ ~-10000 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/spread_summon/spread
tag @e[type=armor_stand,tag=GearInit,distance=..14] remove GearInit