#> world_manager:area/20.end/
#
#
#
# @within function world_manager:area/

# エリアセット
    scoreboard players set $NextInArea Temporary 20
# エリア入場の処理
    execute unless score @s InArea matches 20 run function world_manager:area/20.end/on_entered
# エリア内存在時の処理
    function world_manager:area/20.end/on_tick
