#> mob_manager:entity_finder/attacking_entity/filters/1
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/2

execute if entity @a[tag=this,tag=HasFindAttackingFlag1,distance=..1] if entity @s[tag=FindFlag1] run function mob_manager:entity_finder/attacking_entity/filters/0
execute if entity @a[tag=this,tag=!HasFindAttackingFlag1,distance=..1] if entity @s[tag=!FindFlag1] run function mob_manager:entity_finder/attacking_entity/filters/0