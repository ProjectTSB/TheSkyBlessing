#> world_manager:area/01-10.flora_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 10
# 神殿の処理
    execute unless score @s InSubArea matches 10 run function player_manager:god/flora/in_temple
