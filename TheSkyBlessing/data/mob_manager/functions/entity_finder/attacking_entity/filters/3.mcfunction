#> mob_manager:entity_finder/attacking_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/4

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={3-0=true}}] if entity @s[tag=FindFlag3.0] run function mob_manager:entity_finder/attacking_entity/filters/2
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={3-1=true}}] if entity @s[tag=FindFlag3.1] run function mob_manager:entity_finder/attacking_entity/filters/2
