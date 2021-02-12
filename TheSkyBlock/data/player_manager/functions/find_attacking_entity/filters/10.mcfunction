#> player_manager:find_attacking_entity/filters/10
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/11

execute if entity @a[tag=this,tag=HasFlag10,distance=..1] if entity @s[tag=DetectFlag10] run function player_manager:find_attacking_entity/filters/9
execute if entity @a[tag=this,tag=!HasFlag10,distance=..1] if entity @s[tag=!DetectFlag10] run function player_manager:find_attacking_entity/filters/9