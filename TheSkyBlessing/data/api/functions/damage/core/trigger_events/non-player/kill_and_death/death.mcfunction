#> api:damage/core/trigger_events/non-player/kill_and_death/death
#
#
#
# @within function api:damage/core/trigger_events/non-player/kill_and_death/

function oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death append value {Type: "api",IsVanilla:false}
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].AttackType set from storage api: Argument.AttackType
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].ElementType set from storage api: Argument.ElementType
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].Metadata set from storage api: Argument.Metadata
execute as @a if score @s UserID = $LatestModifiedUser UserID store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].From int 1 run scoreboard players get @s UserID
