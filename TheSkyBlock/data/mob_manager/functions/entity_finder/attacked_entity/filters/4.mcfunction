#> mob_manager:entity_finder/attacked_entity/filters/4
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/5

execute if entity @a[tag=this,tag=HasFindAttackedFlag4,distance=..1] if entity @s[tag=FindFlag4] run function mob_manager:entity_finder/attacked_entity/filters/3
execute if entity @a[tag=this,tag=!HasFindAttackedFlag4,distance=..1] if entity @s[tag=!FindFlag4] run function mob_manager:entity_finder/attacked_entity/filters/3