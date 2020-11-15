#> mob_manager:detect_hurt_entity/on_hurt
#
# 攻撃対象を特定します
#
# @within function core:handler/damage

tag @s add this
say test
execute as @e[team=!Null,type=!player,type=!armor_stand,distance=..100] run function mob_manager:detect_hurt_entity/filters/15
tag @s remove this
tag @s remove HasFlag-0
tag @s remove HasFlag-1
tag @s remove HasFlag-2
tag @s remove HasFlag-3
tag @s remove HasFlag-4
tag @s remove HasFlag-5
tag @s remove HasFlag-6
tag @s remove HasFlag-7
tag @s remove HasFlag-8
tag @s remove HasFlag-9
tag @s remove HasFlag-10
tag @s remove HasFlag-11
tag @s remove HasFlag-12
tag @s remove HasFlag-13
tag @s remove HasFlag-14
tag @s remove HasFlag-15