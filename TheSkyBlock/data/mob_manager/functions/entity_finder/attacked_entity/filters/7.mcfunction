#> mob_manager:entity_finder/attacked_entity/filters/7
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/8

execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacked_entity={7-0=true}}] if entity @s[tag=FindFlag7.0] run function mob_manager:entity_finder/attacked_entity/filters/6
execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacked_entity={7-1=true}}] if entity @s[tag=FindFlag7.1] run function mob_manager:entity_finder/attacked_entity/filters/6