#> mob_manager:entity_finder/attacking_entity/filters/8
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/9

execute if data storage mob_manager:attacking_entity BitData{8:0b} if entity @s[tag=FindFlag8.0] run function mob_manager:entity_finder/attacking_entity/filters/7
execute if data storage mob_manager:attacking_entity BitData{8:1b} if entity @s[tag=FindFlag8.1] run function mob_manager:entity_finder/attacking_entity/filters/7