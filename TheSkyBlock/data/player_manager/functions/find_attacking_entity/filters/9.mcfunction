#> player_manager:find_attacking_entity/filters/9
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/filters/10

execute if entity @a[tag=this,tag=HasFlag9,distance=..1] if entity @s[tag=DetectFlag9] run function player_manager:find_attacking_entity/filters/8
execute if entity @a[tag=this,tag=!HasFlag9,distance=..1] if entity @s[tag=!DetectFlag9] run function player_manager:find_attacking_entity/filters/8