#> mob_manager:entity_finder/attacking_entity/filters/4
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/5

execute if data storage mob_manager:attacking_entity BitData{4:0b} if entity @s[tag=FindFlag4.0] run function mob_manager:entity_finder/attacking_entity/filters/3
execute if data storage mob_manager:attacking_entity BitData{4:1b} if entity @s[tag=FindFlag4.1] run function mob_manager:entity_finder/attacking_entity/filters/3