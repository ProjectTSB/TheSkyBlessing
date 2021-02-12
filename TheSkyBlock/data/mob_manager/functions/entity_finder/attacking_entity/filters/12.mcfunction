#> mob_manager:entity_finder/attacking_entity/filters/12
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/13

execute if entity @a[tag=this,tag=HasFlag12,distance=..1] if entity @s[tag=DetectFlag12] run function mob_manager:entity_finder/attacking_entity/filters/11
execute if entity @a[tag=this,tag=!HasFlag12,distance=..1] if entity @s[tag=!DetectFlag12] run function mob_manager:entity_finder/attacking_entity/filters/11