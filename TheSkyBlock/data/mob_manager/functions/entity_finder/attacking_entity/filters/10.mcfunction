#> mob_manager:entity_finder/attacking_entity/filters/10
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/11

execute if entity @a[tag=this,tag=HasFindAttackingFlag10,distance=..1] if entity @s[tag=FindFlag10] run function mob_manager:entity_finder/attacking_entity/filters/9
execute if entity @a[tag=this,tag=!HasFindAttackingFlag10,distance=..1] if entity @s[tag=!FindFlag10] run function mob_manager:entity_finder/attacking_entity/filters/9