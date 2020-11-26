#> mob_manager:detect_hurt_entity/filters/15
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/on_hurt

execute if entity @a[tag=This,tag=HasFlag15,distance=..1] if entity @s[tag=DetectFlag15] run function mob_manager:detect_hurt_entity/filters/14
execute if entity @a[tag=This,tag=!HasFlag15,distance=..1] if entity @s[tag=!DetectFlag15] run function mob_manager:detect_hurt_entity/filters/14