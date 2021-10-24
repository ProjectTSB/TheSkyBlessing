#> world_manager:area/12.rumor_temple
#
#
#
# @within function world_manager:area/watch_change_area

# エリアセット
    scoreboard players set $NextInArea Temporary 12
# 神殿の処理
    execute unless score @s InArea matches 12 run function player_manager:god/rumor/