#> world_manager:gimmick/return_to_overworld_portal/tick
#
#
#
# @within function world_manager:gimmick/

execute as @e[type=marker,tag=EndReturnPortal] at @s if entity @p[distance=..50] run function world_manager:gimmick/return_to_overworld_portal/main