#> mob_manager:entity_finder/attacked_entity/filters/15
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/on_attack

execute if entity @a[tag=this,tag=HasFindAttackedFlag15,distance=..1] if entity @s[tag=FindFlag15] run function mob_manager:entity_finder/attacked_entity/filters/14
execute if entity @a[tag=this,tag=!HasFindAttackedFlag15,distance=..1] if entity @s[tag=!FindFlag15] run function mob_manager:entity_finder/attacked_entity/filters/14