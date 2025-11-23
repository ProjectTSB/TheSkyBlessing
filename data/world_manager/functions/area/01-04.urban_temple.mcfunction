#> world_manager:area/01-04.urban_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 4
# 神殿の処理
    execute unless score @s InSubArea matches 4 run function player_manager:god/urban/in_temple
