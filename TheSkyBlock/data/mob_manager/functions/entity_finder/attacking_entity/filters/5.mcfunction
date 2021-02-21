#> mob_manager:entity_finder/attacking_entity/filters/5
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/6

execute if entity @a[tag=this,tag=HasFindAttackingFlag5,distance=..1] if entity @s[tag=FindFlag5] run function mob_manager:entity_finder/attacking_entity/filters/4
execute if entity @a[tag=this,tag=!HasFindAttackingFlag5,distance=..1] if entity @s[tag=!FindFlag5] run function mob_manager:entity_finder/attacking_entity/filters/4