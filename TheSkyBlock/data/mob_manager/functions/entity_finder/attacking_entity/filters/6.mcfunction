#> mob_manager:entity_finder/attacking_entity/filters/6
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/7

execute if entity @a[tag=this,tag=HasFindAttackingFlag6,distance=..1] if entity @s[tag=FindFlag6] run function mob_manager:entity_finder/attacking_entity/filters/5
execute if entity @a[tag=this,tag=!HasFindAttackingFlag6,distance=..1] if entity @s[tag=!FindFlag6] run function mob_manager:entity_finder/attacking_entity/filters/5