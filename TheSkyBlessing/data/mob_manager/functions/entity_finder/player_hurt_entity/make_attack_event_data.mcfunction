#> mob_manager:entity_finder/player_hurt_entity/make_attack_event_data
#
#
#
# @within function mob_manager:entity_finder/player_hurt_entity/fetch_entity

data modify storage mob_manager:entity_finder AttackEventData set value {IsVanilla:true}
data modify storage mob_manager:entity_finder AttackEventData.Type set from storage mob_manager:entity_finder DamageType
execute store result storage mob_manager:entity_finder AttackEventData.Amount double 0.01 run scoreboard players get $Damage Temporary
