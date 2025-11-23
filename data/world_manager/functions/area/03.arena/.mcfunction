#> world_manager:area/03.arena/
#
#
#
# @within function world_manager:area/

# エリアセット
    scoreboard players set $NextInArea Temporary 03
# エリア入場の処理
    execute unless score @s InArea matches 03 run function world_manager:area/03.arena/on_entered
# エリア内存在時の処理
    function world_manager:area/03.arena/on_tick
