#> player_manager:find_attacking_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/4

execute if entity @a[tag=this,tag=HasFlag3,distance=..1] if entity @s[tag=DetectFlag3] run function player_manager:find_attacking_entity/filters/2
execute if entity @a[tag=this,tag=!HasFlag3,distance=..1] if entity @s[tag=!DetectFlag3] run function player_manager:find_attacking_entity/filters/2