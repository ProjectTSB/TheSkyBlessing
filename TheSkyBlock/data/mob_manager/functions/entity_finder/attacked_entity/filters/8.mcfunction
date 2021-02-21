#> mob_manager:entity_finder/attacked_entity/filters/8
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/9

execute if entity @a[tag=this,tag=HasFindAttackedFlag8,distance=..1] if entity @s[tag=FindFlag8] run function mob_manager:entity_finder/attacked_entity/filters/7
execute if entity @a[tag=this,tag=!HasFindAttackedFlag8,distance=..1] if entity @s[tag=!FindFlag8] run function mob_manager:entity_finder/attacked_entity/filters/7