#> mob_manager:entity_finder/attacking_entity/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:entity_finder/attacking_entity/on_hurt

execute if entity @a[tag=this,tag=HasFindAttackingFlag15,distance=..1] if entity @s[tag=FindFlag15] run function mob_manager:entity_finder/attacking_entity/filters/14
execute if entity @a[tag=this,tag=!HasFindAttackingFlag15,distance=..1] if entity @s[tag=!FindFlag15] run function mob_manager:entity_finder/attacking_entity/filters/14