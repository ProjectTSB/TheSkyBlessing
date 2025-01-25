#> world_manager:area/01-05.wi-ki_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 5
# 神殿の処理
    execute unless score @s InSubArea matches 5 run function player_manager:god/wi-ki/in_temple
