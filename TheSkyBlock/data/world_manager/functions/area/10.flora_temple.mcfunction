#> world_manager:area/10.flora_temple
#
#
#
# @within function world_manager:area/watch_change_area

# エリアセット
    scoreboard players set $NextInArea Temporary 10
# 神殿の処理
    execute unless score @s InArea matches 10 run function player_manager:god/flora/