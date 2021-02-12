#> mob_manager:entity_finder/attacked_entity/filters/13
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/14

execute if entity @a[tag=this,tag=HasFindAttackedFlag13,distance=..1] if entity @s[tag=FindFlag13] run function mob_manager:entity_finder/attacked_entity/filters/12
execute if entity @a[tag=this,tag=!HasFindAttackedFlag13,distance=..1] if entity @s[tag=!FindFlag13] run function mob_manager:entity_finder/attacked_entity/filters/12