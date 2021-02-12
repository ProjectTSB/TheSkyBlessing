#> mob_manager:entity_finder/attacking_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/4

execute if entity @a[tag=this,tag=HasFindAttackingFlag3,distance=..1] if entity @s[tag=FindFlag3] run function mob_manager:entity_finder/attacking_entity/filters/2
execute if entity @a[tag=this,tag=!HasFindAttackingFlag3,distance=..1] if entity @s[tag=!FindFlag3] run function mob_manager:entity_finder/attacking_entity/filters/2