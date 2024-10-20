#> mob_manager:entity_finder/attacking_entity/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={15-0=true}}] if entity @s[tag=FindFlag15.0] run function mob_manager:entity_finder/attacking_entity/filters/14
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={15-1=true}}] if entity @s[tag=FindFlag15.1] run function mob_manager:entity_finder/attacking_entity/filters/14
