#> mob_manager:detect_hurt_entity/filters/6
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/7

execute if entity @a[tag=this,tag=HasFlag6,distance=..1] if entity @s[tag=DetectFlag6] run function mob_manager:detect_hurt_entity/filters/5
execute if entity @a[tag=this,tag=!HasFlag6,distance=..1] if entity @s[tag=!DetectFlag6] run function mob_manager:detect_hurt_entity/filters/5