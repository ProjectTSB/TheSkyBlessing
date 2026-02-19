#> mob_manager:entity_finder/player_hurt_entity/push_hurt_event
#
#
#
# @within function mob_manager:entity_finder/player_hurt_entity/fetch_entity

function oh_my_dat:please

# IsDoT は、毒などは true にするべきだが、判定が技術的に困難なのため、全てを false として扱う
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt append value {IsVanilla:true,IsDoT:false}
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Type set from storage mob_manager:entity_finder DamageType
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].From int 1 run scoreboard players get @p[tag=AttackedPlayer] UserID
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].Amount double 0.01 run scoreboard players get $Damage Temporary

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Hurt[-1].IsForwarded set from storage api: IsForwarded
