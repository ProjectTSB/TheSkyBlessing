#> player_manager:find_attacking_entity/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function player_manager:find_attacking_entity/on_hurt

execute if entity @a[tag=this,tag=HasFlag15,distance=..1] if entity @s[tag=DetectFlag15] run function player_manager:find_attacking_entity/filters/14
execute if entity @a[tag=this,tag=!HasFlag15,distance=..1] if entity @s[tag=!DetectFlag15] run function player_manager:find_attacking_entity/filters/14