#> api:damage/core/trigger_events/non-player/kill_and_death/kill
#
#
#
# @within function api:damage/core/trigger_events/non-player/kill_and_death/

function oh_my_dat:please

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed append value {Type: "api",IsVanilla:false}
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].To int 1 run scoreboard players get $DamagerUUID Temporary
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Amount.Base double 0.01 run scoreboard players get $Damage Temporary
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Amount.Over double -0.01 run scoreboard players get $Health Temporary
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].AttackType set from storage api: Argument.AttackType
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].ElementType set from storage api: Argument.ElementType
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Killed[-1].Metadata set from storage api: Argument.Metadata
