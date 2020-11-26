#> mob_manager:detect_hurt_entity/filters/10
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/11

execute if entity @a[tag=This,tag=HasFlag10,distance=..1] if entity @s[tag=DetectFlag10] run function mob_manager:detect_hurt_entity/filters/9
execute if entity @a[tag=This,tag=!HasFlag10,distance=..1] if entity @s[tag=!DetectFlag10] run function mob_manager:detect_hurt_entity/filters/9