#> asset_manager:artifact/triggers/equipments/update_attribute/check_religion
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/extract_changes

execute if data storage asset:artifact {CanUsedGod:["Flora"]} if predicate player_manager:is_believe/flora run scoreboard players set $CheckBelieve Temporary 1
execute if data storage asset:artifact {CanUsedGod:["Nyaptov"]} if predicate player_manager:is_believe/nyaptov run scoreboard players set $CheckBelieve Temporary 1
execute if data storage asset:artifact {CanUsedGod:["Rumor"]} if predicate player_manager:is_believe/rumor run scoreboard players set $CheckBelieve Temporary 1
execute if data storage asset:artifact {CanUsedGod:["Urban"]} if predicate player_manager:is_believe/urban run scoreboard players set $CheckBelieve Temporary 1
execute if data storage asset:artifact {CanUsedGod:["Wi-ki"]} if predicate player_manager:is_believe/wi-ki run scoreboard players set $CheckBelieve Temporary 1
