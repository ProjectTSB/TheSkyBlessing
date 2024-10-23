#> mob_manager:entity_finder/player_hurt_entity/filters/13
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/14

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={13-0=true}}] if entity @s[tag=FindFlag13.0] run function mob_manager:entity_finder/player_hurt_entity/filters/12
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={13-1=true}}] if entity @s[tag=FindFlag13.1] run function mob_manager:entity_finder/player_hurt_entity/filters/12
