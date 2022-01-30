#> mob_manager:entity_finder/attacking_entity/filters/5
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/6

execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacking_entity={5-0=true}}] if entity @s[tag=FindFlag5.0] run function mob_manager:entity_finder/attacking_entity/filters/4
execute if entity @a[tag=this,advancements={mob_manager:entity_finder/check_attacking_entity={5-1=true}}] if entity @s[tag=FindFlag5.1] run function mob_manager:entity_finder/attacking_entity/filters/4