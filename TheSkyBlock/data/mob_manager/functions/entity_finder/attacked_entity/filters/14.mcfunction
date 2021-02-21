#> mob_manager:entity_finder/attacked_entity/filters/14
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/15

execute if entity @a[tag=this,tag=HasFindAttackedFlag14,distance=..1] if entity @s[tag=FindFlag14] run function mob_manager:entity_finder/attacked_entity/filters/13
execute if entity @a[tag=this,tag=!HasFindAttackedFlag14,distance=..1] if entity @s[tag=!FindFlag14] run function mob_manager:entity_finder/attacked_entity/filters/13