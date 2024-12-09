#> world_manager:area/01-12.rumor_temple
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 12
# 神殿の処理
    execute unless score @s InSubArea matches 12 run function player_manager:god/rumor/in_temple
