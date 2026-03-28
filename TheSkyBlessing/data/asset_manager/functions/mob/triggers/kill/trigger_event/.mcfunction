#> asset_manager:mob/triggers/kill/trigger_event/
#
#
#
# @within function core:handler/death

scoreboard players operation $TargetID Temporary = @s UserID
execute as @e[tag=Enemy.Boss] run function asset_manager:mob/triggers/kill/trigger_event/foreach
scoreboard players reset $TargetID Temporary
