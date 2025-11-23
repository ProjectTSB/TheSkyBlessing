#> world_manager:area/10.nether/
#
#
#
# @within function world_manager:area/

# エリアセット
    scoreboard players set $NextInArea Temporary 10
# エリア入場の処理
    execute unless score @s InArea matches 10 run function world_manager:area/10.nether/on_entered
# エリア内存在時の処理
    function world_manager:area/10.nether/on_tick
