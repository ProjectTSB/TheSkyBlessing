#> mob_manager:detect_hurt_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/4

execute if entity @a[tag=This,tag=HasFlag3,distance=..1] if entity @s[tag=DetectFlag3] run function mob_manager:detect_hurt_entity/filters/2
execute if entity @a[tag=This,tag=!HasFlag3,distance=..1] if entity @s[tag=!DetectFlag3] run function mob_manager:detect_hurt_entity/filters/2