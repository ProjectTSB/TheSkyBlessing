#> mob_manager:find_attacking_entity/filters/2
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:find_attacking_entity/filters/3

execute if entity @a[tag=this,tag=HasFlag2,distance=..1] if entity @s[tag=DetectFlag2] run function mob_manager:find_attacking_entity/filters/1
execute if entity @a[tag=this,tag=!HasFlag2,distance=..1] if entity @s[tag=!DetectFlag2] run function mob_manager:find_attacking_entity/filters/1