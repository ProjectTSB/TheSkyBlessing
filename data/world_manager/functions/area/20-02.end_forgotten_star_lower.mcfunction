#> world_manager:area/20-02.end_forgotten_star_lower
#
#
#
# @within function world_manager:area/20.end/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 02
# 神殿の処理
    execute if block ~ ~-0.2 ~ barrier run scoreboard players set $Set Lib 0
    execute if block ~ ~-0.2 ~ barrier run function lib:score_to_health_wrapper/set
