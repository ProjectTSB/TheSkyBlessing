#> mob_manager:entity_finder/attacked_entity/filters/10
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/11

execute if entity @a[tag=this,tag=HasFindAttackedFlag10,distance=..1] if entity @s[tag=FindFlag10] run function mob_manager:entity_finder/attacked_entity/filters/9
execute if entity @a[tag=this,tag=!HasFindAttackedFlag10,distance=..1] if entity @s[tag=!FindFlag10] run function mob_manager:entity_finder/attacked_entity/filters/9