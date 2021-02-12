#> mob_manager:entity_finder/attacking_entity/filters/11
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/12

execute if entity @a[tag=this,tag=HasFlag11,distance=..1] if entity @s[tag=DetectFlag11] run function mob_manager:entity_finder/attacking_entity/filters/10
execute if entity @a[tag=this,tag=!HasFlag11,distance=..1] if entity @s[tag=!DetectFlag11] run function mob_manager:entity_finder/attacking_entity/filters/10