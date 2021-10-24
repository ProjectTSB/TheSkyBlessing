#> world_manager:area/13.urban_temple
#
#
#
# @within function world_manager:area/watch_change_area

# エリアセット
    scoreboard players set $NextInArea Temporary 13
# 神殿の処理
    execute unless score @s InArea matches 13 run function player_manager:god/urban/