#> player_manager:find_attacking_entity/filters/8
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/9

execute if entity @a[tag=this,tag=HasFlag8,distance=..1] if entity @s[tag=DetectFlag8] run function player_manager:find_attacking_entity/filters/7
execute if entity @a[tag=this,tag=!HasFlag8,distance=..1] if entity @s[tag=!DetectFlag8] run function player_manager:find_attacking_entity/filters/7