#> mob_manager:entity_finder/attacking_entity/filters/9
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/10

execute if entity @a[tag=this,tag=HasFindAttackingFlag9,distance=..1] if entity @s[tag=FindFlag9] run function mob_manager:entity_finder/attacking_entity/filters/8
execute if entity @a[tag=this,tag=!HasFindAttackingFlag9,distance=..1] if entity @s[tag=!FindFlag9] run function mob_manager:entity_finder/attacking_entity/filters/8