#> mob_manager:entity_finder/entity_hurt_player/filters/0
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/1

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={0-0=true}}] if entity @s[tag=FindFlag0.0] run function mob_manager:entity_finder/entity_hurt_player/fetch_entity
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={0-1=true}}] if entity @s[tag=FindFlag0.1] run function mob_manager:entity_finder/entity_hurt_player/fetch_entity
