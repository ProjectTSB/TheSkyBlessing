#> mob_manager:entity_finder/attacking_entity/filters/12
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/13

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={12-0=true}}] if entity @s[tag=FindFlag12.0] run function mob_manager:entity_finder/attacking_entity/filters/11
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={12-1=true}}] if entity @s[tag=FindFlag12.1] run function mob_manager:entity_finder/attacking_entity/filters/11
