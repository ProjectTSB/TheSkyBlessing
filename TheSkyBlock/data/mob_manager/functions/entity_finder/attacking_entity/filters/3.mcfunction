#> mob_manager:entity_finder/attacking_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/4

execute if data storage mob_manager:attacking_entity BitData{3:0b} if entity @s[tag=FindFlag3.0] run function mob_manager:entity_finder/attacking_entity/filters/2
execute if data storage mob_manager:attacking_entity BitData{3:1b} if entity @s[tag=FindFlag3.1] run function mob_manager:entity_finder/attacking_entity/filters/2