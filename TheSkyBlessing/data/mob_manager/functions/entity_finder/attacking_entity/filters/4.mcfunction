#> mob_manager:entity_finder/attacking_entity/filters/4
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/5

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={4-0=true}}] if entity @s[tag=FindFlag4.0] run function mob_manager:entity_finder/attacking_entity/filters/3
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={4-1=true}}] if entity @s[tag=FindFlag4.1] run function mob_manager:entity_finder/attacking_entity/filters/3
