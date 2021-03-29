#> mob_manager:entity_finder/attacking_entity/filters/9
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/10

execute if data storage mob_manager:attacking_entity BitData{9:0b} if entity @s[tag=FindFlag9.0] run function mob_manager:entity_finder/attacking_entity/filters/8
execute if data storage mob_manager:attacking_entity BitData{9:1b} if entity @s[tag=FindFlag9.1] run function mob_manager:entity_finder/attacking_entity/filters/8