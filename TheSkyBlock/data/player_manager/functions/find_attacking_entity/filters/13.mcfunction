#> player_manager:find_attacking_entity/filters/13
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/14

execute if entity @a[tag=this,tag=HasFlag13,distance=..1] if entity @s[tag=DetectFlag13] run function player_manager:find_attacking_entity/filters/12
execute if entity @a[tag=this,tag=!HasFlag13,distance=..1] if entity @s[tag=!DetectFlag13] run function player_manager:find_attacking_entity/filters/12