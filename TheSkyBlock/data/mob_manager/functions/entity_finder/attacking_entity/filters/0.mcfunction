#> mob_manager:entity_finder/attacking_entity/filters/0
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/filters/1

execute if entity @a[tag=this,tag=HasFindAttackingFlag0,distance=..1] if entity @s[tag=FindFlag0] run function mob_manager:entity_finder/attacking_entity/fetch_attacking_entity
execute if entity @a[tag=this,tag=!HasFindAttackingFlag0,distance=..1] if entity @s[tag=!FindFlag0] run function mob_manager:entity_finder/attacking_entity/fetch_attacking_entity