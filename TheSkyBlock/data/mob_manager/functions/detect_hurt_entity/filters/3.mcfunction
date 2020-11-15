#> mob_manager:detect_hurt_entity/filters/3
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/4

execute if entity @a[tag=this,tag=HasFlag-3,distance=..1] if entity @s[tag=DetectFlag-3] run function mob_manager:detect_hurt_entity/filters/2
execute if entity @a[tag=this,tag=!HasFlag-3,distance=..1] if entity @s[tag=!DetectFlag-3] run function mob_manager:detect_hurt_entity/filters/2