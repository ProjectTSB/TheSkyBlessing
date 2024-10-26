#> world_manager:area/00-13.urban_temple
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 13
# 神殿の処理
    execute unless score @s InSubArea matches 13 run function player_manager:god/urban/in_temple
