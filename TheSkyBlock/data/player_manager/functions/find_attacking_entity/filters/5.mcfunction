#> player_manager:find_attacking_entity/filters/5
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/6

execute if entity @a[tag=this,tag=HasFlag5,distance=..1] if entity @s[tag=DetectFlag5] run function player_manager:find_attacking_entity/filters/4
execute if entity @a[tag=this,tag=!HasFlag5,distance=..1] if entity @s[tag=!DetectFlag5] run function player_manager:find_attacking_entity/filters/4