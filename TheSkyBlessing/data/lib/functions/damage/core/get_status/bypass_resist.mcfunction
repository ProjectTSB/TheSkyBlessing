#> lib:damage/core/get_status/bypass_resist
#
#
#
# @within function lib:damage/core/get_status/

execute store result score $Damage Temporary run data get storage lib: Argument.Damage 100
scoreboard players set $defensePoints Temporary 0
scoreboard players set $toughness Temporary 0
scoreboard players set $Resistance Temporary 0
scoreboard players set $EPF Temporary 0