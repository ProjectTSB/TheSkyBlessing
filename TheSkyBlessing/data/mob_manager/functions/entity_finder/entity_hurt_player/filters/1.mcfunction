#> mob_manager:entity_finder/entity_hurt_player/filters/1
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/2

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={1-0=true}}] if entity @s[tag=FindFlag1.0] run function mob_manager:entity_finder/entity_hurt_player/filters/0
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={1-1=true}}] if entity @s[tag=FindFlag1.1] run function mob_manager:entity_finder/entity_hurt_player/filters/0
