#> mob_manager:entity_finder/attacked_entity/filters/0
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/1

execute if data storage mob_manager:attacked_entity BitData{0:0b} if entity @s[tag=FindFlag0.0] run function mob_manager:entity_finder/attacked_entity/fetch_attacked_entity
execute if data storage mob_manager:attacked_entity BitData{0:1b} if entity @s[tag=FindFlag0.1] run function mob_manager:entity_finder/attacked_entity/fetch_attacked_entity