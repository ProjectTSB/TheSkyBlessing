#> world_manager:area/14.wi-ki_temple
#
#
#
# @within function world_manager:area/watch_change_area

# エリアセット
    scoreboard players set $NextInArea Temporary 14
# 神殿の処理
    execute unless score @s InArea matches 14 run function player_manager:god/wi-ki/in_temple