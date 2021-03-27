#> mob_manager:entity_finder/attacked_entity/filters/13
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/14

execute if data storage mob_manager:attacked_entity BitData{13:0b} if entity @s[tag=FindFlag13.0] run function mob_manager:entity_finder/attacked_entity/filters/12
execute if data storage mob_manager:attacked_entity BitData{13:1b} if entity @s[tag=FindFlag13.1] run function mob_manager:entity_finder/attacked_entity/filters/12