#> mob_manager:detect_hurt_entity/filters/14
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/15

execute if entity @a[tag=This,tag=HasFlag14,distance=..1] if entity @s[tag=DetectFlag14] run function mob_manager:detect_hurt_entity/filters/13
execute if entity @a[tag=This,tag=!HasFlag14,distance=..1] if entity @s[tag=!DetectFlag14] run function mob_manager:detect_hurt_entity/filters/13