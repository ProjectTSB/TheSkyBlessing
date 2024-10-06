#> mob_manager:entity_finder/attacked_entity/filters/3
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/4

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_attacked_entity={3-0=true}}] if entity @s[tag=FindFlag3.0] run function mob_manager:entity_finder/attacked_entity/filters/2
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_attacked_entity={3-1=true}}] if entity @s[tag=FindFlag3.1] run function mob_manager:entity_finder/attacked_entity/filters/2
