#> mob_manager:entity_finder/attacked_entity/filters/7
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/8

execute if data storage mob_manager:attacked_entity BitData{7:0b} if entity @s[tag=FindFlag7.0] run function mob_manager:entity_finder/attacked_entity/filters/6
execute if data storage mob_manager:attacked_entity BitData{7:1b} if entity @s[tag=FindFlag7.1] run function mob_manager:entity_finder/attacked_entity/filters/6