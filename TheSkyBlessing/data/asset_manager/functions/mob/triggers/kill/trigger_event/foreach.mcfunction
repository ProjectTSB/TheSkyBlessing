#> asset_manager:mob/triggers/kill/trigger_event/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/kill/trigger_event/
#   asset_manager:mob/triggers/kill/trigger_event/foreach

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Kill append value {}
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Kill[-1].To int 1 run scoreboard players get $TargetID Temporary
