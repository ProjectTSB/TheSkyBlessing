#> world_manager:area/00.tutorial/
#
#
#
# @within function world_manager:area/

# エリアセット
    scoreboard players set $NextInArea Temporary 00
# エリア入場の処理
    execute unless score @s InArea matches 00 run function world_manager:area/00.tutorial/on_entered
# エリア内存在時の処理
    function world_manager:area/00.tutorial/on_tick
