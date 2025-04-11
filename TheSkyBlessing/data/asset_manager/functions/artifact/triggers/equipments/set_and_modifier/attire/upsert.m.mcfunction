#> asset_manager:artifact/triggers/equipments/set_and_modifier/attire/upsert.m
#
#
#
# @input args Value : int
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/unique

#> private
# @private
    #declare score_holder $ExistsID

$execute store result score $ExistsID Temporary if data storage asset:artifact Temp.List[{_:$(Value)}]
$execute unless score $ExistsID Temporary matches 1.. run data modify storage asset:artifact Temp.List append value {_:$(Value)}
scoreboard players reset $ExistsID Temporary
