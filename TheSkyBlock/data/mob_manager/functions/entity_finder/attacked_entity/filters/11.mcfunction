#> mob_manager:entity_finder/attacked_entity/filters/11
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/12

execute if entity @a[tag=this,tag=HasFindAttackedFlag11,distance=..1] if entity @s[tag=FindFlag11] run function mob_manager:entity_finder/attacked_entity/filters/10
execute if entity @a[tag=this,tag=!HasFindAttackedFlag11,distance=..1] if entity @s[tag=!FindFlag11] run function mob_manager:entity_finder/attacked_entity/filters/10