#> mob_manager:entity_finder/player_hurt_entity/filters/2
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/3

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={2-0=true}}] if entity @s[tag=FindFlag2.0] run function mob_manager:entity_finder/player_hurt_entity/filters/1
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={2-1=true}}] if entity @s[tag=FindFlag2.1] run function mob_manager:entity_finder/player_hurt_entity/filters/1
