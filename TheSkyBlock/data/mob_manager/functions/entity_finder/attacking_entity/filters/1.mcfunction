#> mob_manager:entity_finder/attacking_entity/filters/1
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/2

execute if data storage mob_manager:attacking_entity BitData{1:0b} if entity @s[tag=FindFlag1.0] run function mob_manager:entity_finder/attacking_entity/filters/0
execute if data storage mob_manager:attacking_entity BitData{1:1b} if entity @s[tag=FindFlag1.1] run function mob_manager:entity_finder/attacking_entity/filters/0