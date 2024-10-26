#> world_manager:area/20-01.end_mansion_void
#
#
#
# @within function world_manager:area/20.end/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 01
# 神殿の処理
    execute unless score @s InSubArea matches 01 run scoreboard players set $Set Lib 0
    execute unless score @s InSubArea matches 01 run function lib:score_to_health_wrapper/set
