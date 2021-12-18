#> world_manager:area/watch_change_area
#
# エリア管理
#
# @within function core:tick/player

# 次のエリア情報をリセット
    scoreboard players set $NextInArea Temporary 0
# 各エリア処理
    execute if predicate world_manager:area/01.tutorial run function world_manager:area/01.tutorial
    execute if predicate world_manager:area/10.flora_temple run function world_manager:area/10.flora_temple
    execute if predicate world_manager:area/11.nyaptov_temple run function world_manager:area/11.nyaptov_temple
    execute if predicate world_manager:area/12.rumor_temple run function world_manager:area/12.rumor_temple
    execute if predicate world_manager:area/13.urban_temple run function world_manager:area/13.urban_temple
    execute if predicate world_manager:area/14.wi-ki_temple run function world_manager:area/14.wi-ki_temple
# 次のエリア情報を戻す
    scoreboard players operation @s InArea = $NextInArea Temporary
# リセット
    scoreboard players reset $NextInArea Temporary