#> world_manager:area/01-99.world-spawn
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 99
# チュートリアル完了済フラグが付いていたらTPする
    execute if entity @s[tag=TutorialEnded] run tp 23.5 3.5 24.5