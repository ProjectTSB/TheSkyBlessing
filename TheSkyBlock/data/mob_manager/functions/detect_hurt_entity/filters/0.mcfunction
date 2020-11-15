#> mob_manager:detect_hurt_entity/filters/0
#
# 攻撃元のエンティティ候補を絞っていく
#
# @within function mob_manager:detect_hurt_entity/filters/1

execute if entity @a[tag=this,tag=HasFlag-0,distance=..1] if entity @s[tag=DetectFlag-0] run function mob_manager:detect_hurt_entity/fetch_hurt_entity
execute if entity @a[tag=this,tag=!HasFlag-0,distance=..1] if entity @s[tag=!DetectFlag-0] run function mob_manager:detect_hurt_entity/fetch_hurt_entity