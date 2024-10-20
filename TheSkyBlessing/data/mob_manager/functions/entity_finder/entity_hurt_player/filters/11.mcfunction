#> mob_manager:entity_finder/entity_hurt_player/filters/11
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/entity_hurt_player/filters/12

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={11-0=true}}] if entity @s[tag=FindFlag11.0] run function mob_manager:entity_finder/entity_hurt_player/filters/10
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/entity_hurt_player={11-1=true}}] if entity @s[tag=FindFlag11.1] run function mob_manager:entity_finder/entity_hurt_player/filters/10
