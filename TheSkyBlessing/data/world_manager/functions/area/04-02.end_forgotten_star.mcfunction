#> world_manager:area/04-02.end_forgotten_star
#
#
#
# @within function world_manager:area/04.end/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 02
# 神殿の処理
    execute unless score @s InSubArea matches 02 if block ~ ~-0.2 ~ barrier run scoreboard players set $Set Lib 0
    execute unless score @s InSubArea matches 02 if block ~ ~-0.2 ~ barrier run function lib:score_to_health_wrapper/set