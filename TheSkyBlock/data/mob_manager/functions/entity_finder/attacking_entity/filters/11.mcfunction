#> mob_manager:entity_finder/attacking_entity/filters/11
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/12

execute if data storage mob_manager:attacking_entity BitData{11:0b} if entity @s[tag=FindFlag11.0] run function mob_manager:entity_finder/attacking_entity/filters/10
execute if data storage mob_manager:attacking_entity BitData{11:1b} if entity @s[tag=FindFlag11.1] run function mob_manager:entity_finder/attacking_entity/filters/10