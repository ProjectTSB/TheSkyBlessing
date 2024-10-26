#> world_manager:area/00-10.flora_temple
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 10
# 神殿の処理
    execute unless score @s InSubArea matches 10 run function player_manager:god/flora/in_temple
