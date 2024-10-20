#> mob_manager:entity_finder/attacking_entity/filters/0
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/1

execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={0-0=true}}] if entity @s[tag=FindFlag0.0] run function mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
execute if entity @p[tag=AttackingPlayer,advancements={mob_manager:entity_finder/check_attacking_entity={0-1=true}}] if entity @s[tag=FindFlag0.1] run function mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
