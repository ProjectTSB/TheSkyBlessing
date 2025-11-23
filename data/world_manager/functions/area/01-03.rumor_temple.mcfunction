#> world_manager:area/01-03.rumor_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 3
# 神殿の処理
    execute unless score @s InSubArea matches 3 run function player_manager:god/rumor/in_temple
