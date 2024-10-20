#> mob_manager:entity_finder/attacking_entity/filters/8
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/9

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={8-0=true}}] if entity @s[tag=FindFlag8.0] run function mob_manager:entity_finder/attacking_entity/filters/7
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={8-1=true}}] if entity @s[tag=FindFlag8.1] run function mob_manager:entity_finder/attacking_entity/filters/7
