#> mob_manager:entity_finder/attacked_entity/filters/1
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/2

execute if entity @a[tag=this,tag=HasFindAttackedFlag1,distance=..1] if entity @s[tag=FindFlag1] run function mob_manager:entity_finder/attacked_entity/filters/0
execute if entity @a[tag=this,tag=!HasFindAttackedFlag1,distance=..1] if entity @s[tag=!FindFlag1] run function mob_manager:entity_finder/attacked_entity/filters/0