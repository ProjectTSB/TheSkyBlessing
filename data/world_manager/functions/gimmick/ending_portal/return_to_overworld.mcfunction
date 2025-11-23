#> world_manager:gimmick/ending_portal/return_to_overworld
#
# 帰還処理
#
# @within function world_manager:gimmick/ending_portal/main
effect give @s blindness 2 0 true
execute at @s run playsound entity.enderman.teleport block @a ~ ~ ~ 2 1
execute in overworld run tp @s 3051 118 -512 -90 0
execute at @s run playsound entity.enderman.teleport block @a ~ ~ ~ 2 1
