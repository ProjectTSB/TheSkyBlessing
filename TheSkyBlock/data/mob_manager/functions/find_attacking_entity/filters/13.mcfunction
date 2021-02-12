#> mob_manager:find_attacking_entity/filters/13
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:find_attacking_entity/filters/14

execute if entity @a[tag=this,tag=HasFlag13,distance=..1] if entity @s[tag=DetectFlag13] run function mob_manager:find_attacking_entity/filters/12
execute if entity @a[tag=this,tag=!HasFlag13,distance=..1] if entity @s[tag=!DetectFlag13] run function mob_manager:find_attacking_entity/filters/12