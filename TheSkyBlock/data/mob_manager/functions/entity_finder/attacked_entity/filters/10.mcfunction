#> mob_manager:entity_finder/attacked_entity/filters/10
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/11

execute if data storage mob_manager:attacked_entity BitData{10:0b} if entity @s[tag=FindFlag10.0] run function mob_manager:entity_finder/attacked_entity/filters/9
execute if data storage mob_manager:attacked_entity BitData{10:1b} if entity @s[tag=FindFlag10.1] run function mob_manager:entity_finder/attacked_entity/filters/9