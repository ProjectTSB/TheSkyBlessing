#> mob_manager:entity_finder/entity_hurt_player/filters/5
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/6

execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={5-0=true}}] if entity @s[tag=FindFlag5.0] run function mob_manager:entity_finder/entity_hurt_player/filters/4
execute if entity @p[tag=DamagedPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={5-1=true}}] if entity @s[tag=FindFlag5.1] run function mob_manager:entity_finder/entity_hurt_player/filters/4
