#> mob_manager:entity_finder/attacking_entity/filters/6
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/7

execute if data storage mob_manager:attacking_entity BitData{6:0b} if entity @s[tag=FindFlag6.0] run function mob_manager:entity_finder/attacking_entity/filters/5
execute if data storage mob_manager:attacking_entity BitData{6:1b} if entity @s[tag=FindFlag6.1] run function mob_manager:entity_finder/attacking_entity/filters/5