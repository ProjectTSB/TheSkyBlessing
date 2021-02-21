#> mob_manager:entity_finder/attacked_entity/filters/0
#
# 攻撃先のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacked_entity/filters/1

execute if entity @a[tag=this,tag=HasFindAttackedFlag0,distance=..1] if entity @s[tag=FindFlag0] run function mob_manager:entity_finder/attacked_entity/fetch_attacked_entity
execute if entity @a[tag=this,tag=!HasFindAttackedFlag0,distance=..1] if entity @s[tag=!FindFlag0] run function mob_manager:entity_finder/attacked_entity/fetch_attacked_entity