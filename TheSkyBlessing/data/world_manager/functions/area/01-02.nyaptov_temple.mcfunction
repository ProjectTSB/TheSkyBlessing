#> world_manager:area/01-02.nyaptov_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 2
# 神殿の処理
    execute unless score @s InSubArea matches 2 run function player_manager:god/nyaptov/in_temple
