#> player_manager:find_attacking_entity/filters/14
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/15

execute if entity @a[tag=this,tag=HasFlag14,distance=..1] if entity @s[tag=DetectFlag14] run function player_manager:find_attacking_entity/filters/13
execute if entity @a[tag=this,tag=!HasFlag14,distance=..1] if entity @s[tag=!DetectFlag14] run function player_manager:find_attacking_entity/filters/13