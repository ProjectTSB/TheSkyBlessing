#> world_manager:area/01-14.wi-ki_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 14
# 神殿の処理
    execute unless score @s InSubArea matches 14 run function player_manager:god/wi-ki/in_temple
