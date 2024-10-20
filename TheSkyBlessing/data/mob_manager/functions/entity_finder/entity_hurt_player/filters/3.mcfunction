#> mob_manager:entity_finder/entity_hurt_player/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/4

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={3-0=true}}] if entity @s[tag=FindFlag3.0] run function mob_manager:entity_finder/entity_hurt_player/filters/2
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={3-1=true}}] if entity @s[tag=FindFlag3.1] run function mob_manager:entity_finder/entity_hurt_player/filters/2
