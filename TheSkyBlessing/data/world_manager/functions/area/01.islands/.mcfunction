#> world_manager:area/01.islands/
#
#
#
# @within function world_manager:area/

# エリアセット
    scoreboard players set $NextInArea Temporary 01
# エリア入場の処理
    execute unless score @s InArea matches 01 run function world_manager:area/01.islands/on_entered
# エリア内存在時の処理
    function world_manager:area/01.islands/on_tick
