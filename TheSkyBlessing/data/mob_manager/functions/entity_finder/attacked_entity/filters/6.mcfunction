#> mob_manager:entity_finder/attacked_entity/filters/6
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/7

execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacked_entity={6-0=true}}] if entity @s[tag=FindFlag6.0] run function mob_manager:entity_finder/attacked_entity/filters/5
execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacked_entity={6-1=true}}] if entity @s[tag=FindFlag6.1] run function mob_manager:entity_finder/attacked_entity/filters/5