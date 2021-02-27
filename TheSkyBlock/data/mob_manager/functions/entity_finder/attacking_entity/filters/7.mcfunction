#> mob_manager:entity_finder/attacking_entity/filters/7
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/8

execute if entity @a[tag=this,tag=HasFindAttackingFlag7,distance=..1] if entity @s[tag=FindFlag7] run function mob_manager:entity_finder/attacking_entity/filters/6
execute if entity @a[tag=this,tag=!HasFindAttackingFlag7,distance=..1] if entity @s[tag=!FindFlag7] run function mob_manager:entity_finder/attacking_entity/filters/6