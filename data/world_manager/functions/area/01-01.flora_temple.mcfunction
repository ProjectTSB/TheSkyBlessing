#> world_manager:area/01-01.flora_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 1
# 神殿の処理
    execute unless score @s InSubArea matches 1 run function player_manager:god/flora/in_temple
