#> mob_manager:entity_finder/attacked_entity/filters/12
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/13

execute if data storage mob_manager:attacked_entity BitData{12:0b} if entity @s[tag=FindFlag12.0] run function mob_manager:entity_finder/attacked_entity/filters/11
execute if data storage mob_manager:attacked_entity BitData{12:1b} if entity @s[tag=FindFlag12.1] run function mob_manager:entity_finder/attacked_entity/filters/11