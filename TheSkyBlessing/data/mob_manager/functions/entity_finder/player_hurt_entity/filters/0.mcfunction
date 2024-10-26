#> mob_manager:entity_finder/player_hurt_entity/filters/0
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/1

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={0-0=true}}] if entity @s[tag=FindFlag0.0] run function mob_manager:entity_finder/player_hurt_entity/fetch_entity
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={0-1=true}}] if entity @s[tag=FindFlag0.1] run function mob_manager:entity_finder/player_hurt_entity/fetch_entity
