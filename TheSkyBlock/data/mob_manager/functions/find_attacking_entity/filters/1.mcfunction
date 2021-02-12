#> mob_manager:find_attacking_entity/filters/1
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:find_attacking_entity/filters/2

execute if entity @a[tag=this,tag=HasFlag1,distance=..1] if entity @s[tag=DetectFlag1] run function mob_manager:find_attacking_entity/filters/0
execute if entity @a[tag=this,tag=!HasFlag1,distance=..1] if entity @s[tag=!DetectFlag1] run function mob_manager:find_attacking_entity/filters/0