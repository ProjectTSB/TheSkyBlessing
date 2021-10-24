#> world_manager:area/11.nyaptov_temple
#
#
#
# @within function world_manager:area/watch_change_area

# エリアセット
    scoreboard players set $NextInArea Temporary 11
# 神殿の処理
    execute unless score @s InArea matches 11 run function player_manager:god/nyaptov/