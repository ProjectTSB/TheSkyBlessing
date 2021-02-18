#> mob_manager:entity_finder/attacked_entity/filters/2
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/3

execute if entity @a[tag=this,tag=HasFindAttackedFlag2,distance=..1] if entity @s[tag=FindFlag2] run function mob_manager:entity_finder/attacked_entity/filters/1
execute if entity @a[tag=this,tag=!HasFindAttackedFlag2,distance=..1] if entity @s[tag=!FindFlag2] run function mob_manager:entity_finder/attacked_entity/filters/1