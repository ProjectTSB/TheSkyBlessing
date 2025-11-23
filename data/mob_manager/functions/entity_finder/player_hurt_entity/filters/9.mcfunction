#> mob_manager:entity_finder/player_hurt_entity/filters/9
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/10

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={9-0=true}}] if entity @s[tag=FindFlag9.0] run function mob_manager:entity_finder/player_hurt_entity/filters/8
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={9-1=true}}] if entity @s[tag=FindFlag9.1] run function mob_manager:entity_finder/player_hurt_entity/filters/8
