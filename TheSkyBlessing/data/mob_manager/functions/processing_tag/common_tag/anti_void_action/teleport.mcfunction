#> mob_manager:processing_tag/common_tag/anti_void_action/teleport
#
# 対象座標にテレポートする
#
# @within function mob_manager:processing_tag/common_tag/anti_void_action/

playsound entity.enderman.teleport hostile @a ~ ~ ~
execute at @e[type=area_effect_cloud,tag=AntiVoidTarget,limit=1] run playsound entity.enderman.teleport hostile @a ~ ~ ~

data modify entity @s[tag=!DefaultNoGravity] NoGravity set value 0b
tag @s remove DefaultNoGravity

tp @s @e[type=area_effect_cloud,tag=AntiVoidTarget,limit=1]
