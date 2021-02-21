#> mob_manager:entity_finder/attacked_entity/filters/3
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/4

execute if entity @a[tag=this,tag=HasFindAttackedFlag3,distance=..1] if entity @s[tag=FindFlag3] run function mob_manager:entity_finder/attacked_entity/filters/2
execute if entity @a[tag=this,tag=!HasFindAttackedFlag3,distance=..1] if entity @s[tag=!FindFlag3] run function mob_manager:entity_finder/attacked_entity/filters/2