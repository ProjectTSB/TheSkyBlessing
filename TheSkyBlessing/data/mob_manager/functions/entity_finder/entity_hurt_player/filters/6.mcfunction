#> mob_manager:entity_finder/entity_hurt_player/filters/6
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/7

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={6-0=true}}] if entity @s[tag=FindFlag6.0] run function mob_manager:entity_finder/entity_hurt_player/filters/5
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={6-1=true}}] if entity @s[tag=FindFlag6.1] run function mob_manager:entity_finder/entity_hurt_player/filters/5
