#> mob_manager:entity_finder/attacked_entity/filters/2
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/3

execute if data storage mob_manager:attacked_entity BitData{2:0b} if entity @s[tag=FindFlag2.0] run function mob_manager:entity_finder/attacked_entity/filters/1
execute if data storage mob_manager:attacked_entity BitData{2:1b} if entity @s[tag=FindFlag2.1] run function mob_manager:entity_finder/attacked_entity/filters/1