#> mob_manager:entity_finder/attacked_entity/filters/15
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/on_attack

execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacked_entity={15-0=true}}] if entity @s[tag=FindFlag15.0] run function mob_manager:entity_finder/attacked_entity/filters/14
execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacked_entity={15-1=true}}] if entity @s[tag=FindFlag15.1] run function mob_manager:entity_finder/attacked_entity/filters/14