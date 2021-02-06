#> mob_manager:detect_hurt_entity/filters/7
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/8

execute if entity @a[tag=this,tag=HasFlag7,distance=..1] if entity @s[tag=DetectFlag7] run function mob_manager:detect_hurt_entity/filters/6
execute if entity @a[tag=this,tag=!HasFlag7,distance=..1] if entity @s[tag=!DetectFlag7] run function mob_manager:detect_hurt_entity/filters/6