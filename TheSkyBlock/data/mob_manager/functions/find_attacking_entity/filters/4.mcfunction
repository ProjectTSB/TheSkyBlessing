#> mob_manager:find_attacking_entity/filters/4
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:find_attacking_entity/filters/5

execute if entity @a[tag=this,tag=HasFlag4,distance=..1] if entity @s[tag=DetectFlag4] run function mob_manager:find_attacking_entity/filters/3
execute if entity @a[tag=this,tag=!HasFlag4,distance=..1] if entity @s[tag=!DetectFlag4] run function mob_manager:find_attacking_entity/filters/3