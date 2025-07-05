#> api:damage/core/trigger_events/non-player/attack_and_hurt/hurt
#
#
#
# @within function api:damage/core/trigger_events/non-player/attack_and_hurt/

function oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt append value {Type: "api",IsVanilla:false}
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Amount double 0.01 run scoreboard players get $Damage Temporary
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].AttackType set from storage api: Argument.AttackType
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].ElementType set from storage api: Argument.ElementType
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Metadata set from storage api: Argument.Metadata
execute if data storage api: Argument{ApplyTrigger:true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].IsDoT set value false
execute if data storage api: Argument{ApplyTrigger:false} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].IsDoT set value true
execute as @a if score @s UserID = $LatestModifiedUser UserID store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].From int 1 run scoreboard players get @s UserID
