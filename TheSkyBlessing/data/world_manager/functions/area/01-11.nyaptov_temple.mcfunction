#> world_manager:area/01-11.nyaptov_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 11
# 神殿の処理
    execute unless score @s InSubArea matches 11 run function player_manager:god/nyaptov/in_temple