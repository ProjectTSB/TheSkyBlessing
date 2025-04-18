#> world_manager:area/
#
# エリア管理
#
# @within function core:tick/player/

# 次のエリア情報をリセット
    scoreboard players set $NextInArea Temporary -1
    scoreboard players set $NextInSubArea Temporary -1
# 各エリア処理
    execute if predicate world_manager:area/00.tutorial run function world_manager:area/00.tutorial/
    execute if predicate world_manager:area/01.god_boundaries run function world_manager:area/01.god_boundaries/
    execute if predicate world_manager:area/02.islands run function world_manager:area/02.islands/
    execute if predicate world_manager:area/03.arena run function world_manager:area/03.arena/
    execute if predicate world_manager:area/10.nether run function world_manager:area/10.nether/
    execute if predicate world_manager:area/20.end run function world_manager:area/20.end/
# 神殿からの退出処理
# TODO この処理はここにあるべきでなく、もっと汎用的にエリアの入退出処理を組むべき
    execute unless score @s InArea = $NextInArea Temporary if score @s InSubArea matches 1..5 run function world_manager:area/01.god_boundaries/leave_temple
    execute if score @s InArea = $NextInArea Temporary if score @s InArea matches 1 unless score @s InSubArea = $NextInSubArea Temporary if score @s InSubArea matches 1..5 run function world_manager:area/01.god_boundaries/leave_temple
# 次のエリア情報を戻す
    scoreboard players operation @s InArea = $NextInArea Temporary
    scoreboard players operation @s InSubArea = $NextInSubArea Temporary
# リセット
    scoreboard players reset $NextInArea Temporary
    scoreboard players reset $NextInSubArea Temporary
