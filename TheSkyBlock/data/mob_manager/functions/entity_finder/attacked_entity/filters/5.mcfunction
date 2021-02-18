#> mob_manager:entity_finder/attacked_entity/filters/5
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/6

execute if entity @a[tag=this,tag=HasFindAttackedFlag5,distance=..1] if entity @s[tag=FindFlag5] run function mob_manager:entity_finder/attacked_entity/filters/4
execute if entity @a[tag=this,tag=!HasFindAttackedFlag5,distance=..1] if entity @s[tag=!FindFlag5] run function mob_manager:entity_finder/attacked_entity/filters/4