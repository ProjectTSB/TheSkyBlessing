#> mob_manager:entity_finder/attacking_entity/filters/10
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/11

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={10-0=true}}] if entity @s[tag=FindFlag10.0] run function mob_manager:entity_finder/attacking_entity/filters/9
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={10-1=true}}] if entity @s[tag=FindFlag10.1] run function mob_manager:entity_finder/attacking_entity/filters/9
