#> mob_manager:entity_finder/attacked_entity/filters/4
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/5

execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_attacked_entity={4-0=true}}] if entity @s[tag=FindFlag4.0] run function mob_manager:entity_finder/attacked_entity/filters/3
execute if entity @p[tag=AttackedPlayer,advancements={mob_manager:entity_finder/check_attacked_entity={4-1=true}}] if entity @s[tag=FindFlag4.1] run function mob_manager:entity_finder/attacked_entity/filters/3
