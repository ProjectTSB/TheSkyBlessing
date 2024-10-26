#> mob_manager:entity_finder/entity_hurt_player/filters/7
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/8

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={7-0=true}}] if entity @s[tag=FindFlag7.0] run function mob_manager:entity_finder/entity_hurt_player/filters/6
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={7-1=true}}] if entity @s[tag=FindFlag7.1] run function mob_manager:entity_finder/entity_hurt_player/filters/6
