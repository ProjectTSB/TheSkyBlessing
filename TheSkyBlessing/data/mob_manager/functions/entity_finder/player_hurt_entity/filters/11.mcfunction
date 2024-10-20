#> mob_manager:entity_finder/player_hurt_entity/filters/11
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/12

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={11-0=true}}] if entity @s[tag=FindFlag11.0] run function mob_manager:entity_finder/player_hurt_entity/filters/10
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={11-1=true}}] if entity @s[tag=FindFlag11.1] run function mob_manager:entity_finder/player_hurt_entity/filters/10
