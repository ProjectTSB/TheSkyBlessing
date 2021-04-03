#> mob_manager:entity_finder/attacking_entity/filters/14
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/15

execute if data storage mob_manager:attacking_entity BitData{14:0b} if entity @s[tag=FindFlag14.0] run function mob_manager:entity_finder/attacking_entity/filters/13
execute if data storage mob_manager:attacking_entity BitData{14:1b} if entity @s[tag=FindFlag14.1] run function mob_manager:entity_finder/attacking_entity/filters/13