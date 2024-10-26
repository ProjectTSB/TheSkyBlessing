#> world_manager:area/02.arena/
#
#
#
# @within function world_manager:area/

# エリアセット
    scoreboard players set $NextInArea Temporary 02
# エリア入場の処理
    execute unless score @s InArea matches 02 run function world_manager:area/02.arena/on_entered
# エリア内存在時の処理
    function world_manager:area/02.arena/on_tick
