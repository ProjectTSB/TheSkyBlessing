#> mob_manager:entity_finder/entity_hurt_player/filters/12
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/13

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/check_entity_hurt_player={12-0=true}}] if entity @s[tag=FindFlag12.0] run function mob_manager:entity_finder/entity_hurt_player/filters/11
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/check_entity_hurt_player={12-1=true}}] if entity @s[tag=FindFlag12.1] run function mob_manager:entity_finder/entity_hurt_player/filters/11
