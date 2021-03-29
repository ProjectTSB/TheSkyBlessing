#> mob_manager:entity_finder/attacking_entity/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/on_hurt

execute if data storage mob_manager:attacking_entity BitData{15:0b} if entity @s[tag=FindFlag15.0] run function mob_manager:entity_finder/attacking_entity/filters/14
execute if data storage mob_manager:attacking_entity BitData{15:1b} if entity @s[tag=FindFlag15.1] run function mob_manager:entity_finder/attacking_entity/filters/14