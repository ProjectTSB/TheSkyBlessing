#> mob_manager:entity_finder/attacking_entity/filters/14
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/15

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={14-0=true}}] if entity @s[tag=FindFlag14.0] run function mob_manager:entity_finder/attacking_entity/filters/13
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={14-1=true}}] if entity @s[tag=FindFlag14.1] run function mob_manager:entity_finder/attacking_entity/filters/13
