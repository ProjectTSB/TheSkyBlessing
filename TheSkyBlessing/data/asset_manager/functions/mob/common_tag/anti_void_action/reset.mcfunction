#> asset_manager:mob/common_tag/anti_void_action/reset
#
# リセット処理
#
# @within function asset_manager:mob/common_tag/anti_void_action/

scoreboard players reset @s VoidActionTime
kill @e[type=area_effect_cloud,tag=AntiVoidTarget,limit=1]