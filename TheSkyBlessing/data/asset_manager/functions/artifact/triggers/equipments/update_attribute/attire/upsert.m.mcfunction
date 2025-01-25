#> asset_manager:artifact/triggers/equipments/update_attribute/attire/upsert.m
#
#
#
# @input args Value : int
# @within function asset_manager:artifact/triggers/equipments/update_attribute/attire/concat

#> private
# @private
    #declare score_holder $ExistsID

$execute store result score $ExistsID Temporary if data storage asset:artifact Attire.List[{_:$(Value)}]
$execute unless score $ExistsID Temporary matches 1.. run data modify storage asset:artifact Attire.List append value {_:$(Value)}
scoreboard players reset $ExistsID Temporary
