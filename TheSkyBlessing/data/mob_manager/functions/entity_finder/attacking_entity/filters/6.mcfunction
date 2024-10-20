#> mob_manager:entity_finder/attacking_entity/filters/6
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/7

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={6-0=true}}] if entity @s[tag=FindFlag6.0] run function mob_manager:entity_finder/attacking_entity/filters/5
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={6-1=true}}] if entity @s[tag=FindFlag6.1] run function mob_manager:entity_finder/attacking_entity/filters/5
