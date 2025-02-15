#> mob_manager:processing_tag/common_tag/anti_void_action/vfx/
#
# VFXコントローラー
#
# @within function mob_manager:processing_tag/common_tag/anti_void_action/

execute if score @s VoidActionTime matches 1..20 run particle portal ~ ~0.5 ~ 0 0 0 1 10 force
execute if score @s VoidActionTime matches 56..60 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/tp_line
execute if score @s VoidActionTime matches 1..60 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/warning
execute if score @s VoidActionTime matches 61 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/aoe/1
execute if score @s VoidActionTime matches 62 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/aoe/2
execute if score @s VoidActionTime matches 63 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/aoe/3
execute if score @s VoidActionTime matches 64 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/aoe/4
execute if score @s VoidActionTime matches 65 run function mob_manager:processing_tag/common_tag/anti_void_action/vfx/aoe/5
