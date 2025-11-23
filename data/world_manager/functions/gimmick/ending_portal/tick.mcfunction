#> world_manager:gimmick/ending_portal/tick
#
#
#
# @within function world_manager:gimmick/

execute as @e[type=marker,tag=BetaEndingPortal] at @s if entity @p[distance=..50] run function world_manager:gimmick/ending_portal/main
