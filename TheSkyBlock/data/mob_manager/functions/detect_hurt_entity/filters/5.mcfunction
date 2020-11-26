#> mob_manager:detect_hurt_entity/filters/5
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/6

execute if entity @a[tag=This,tag=HasFlag5,distance=..1] if entity @s[tag=DetectFlag5] run function mob_manager:detect_hurt_entity/filters/4
execute if entity @a[tag=This,tag=!HasFlag5,distance=..1] if entity @s[tag=!DetectFlag5] run function mob_manager:detect_hurt_entity/filters/4