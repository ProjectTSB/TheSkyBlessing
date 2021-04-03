#> mob_manager:entity_finder/attacked_entity/filters/5
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/6

execute if data storage mob_manager:attacked_entity BitData{5:0b} if entity @s[tag=FindFlag5.0] run function mob_manager:entity_finder/attacked_entity/filters/4
execute if data storage mob_manager:attacked_entity BitData{5:1b} if entity @s[tag=FindFlag5.1] run function mob_manager:entity_finder/attacked_entity/filters/4