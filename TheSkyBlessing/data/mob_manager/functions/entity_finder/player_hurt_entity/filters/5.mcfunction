#> mob_manager:entity_finder/player_hurt_entity/filters/5
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/player_hurt_entity/filters/6

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={5-0=true}}] if entity @s[tag=FindFlag5.0] run function mob_manager:entity_finder/player_hurt_entity/filters/4
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_player_hurt_entity={5-1=true}}] if entity @s[tag=FindFlag5.1] run function mob_manager:entity_finder/player_hurt_entity/filters/4
