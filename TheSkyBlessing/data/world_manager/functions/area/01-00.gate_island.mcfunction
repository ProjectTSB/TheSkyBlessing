#> world_manager:area/01-00.gate_island
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 0
# 設定の表示
    execute unless score @s InSubArea matches 0 run function settings:send_open_button
