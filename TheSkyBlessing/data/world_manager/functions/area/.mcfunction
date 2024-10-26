#> world_manager:area/
#
# エリア管理
#
# @within function core:tick/player/

# 次のエリア情報をリセット
    scoreboard players set $NextInArea Temporary -1
    scoreboard players set $NextInSubArea Temporary -1
# 各エリア処理
    execute if predicate world_manager:area/00.god_boundaries run function world_manager:area/00.god_boundaries/
    execute if predicate world_manager:area/01.islands run function world_manager:area/01.islands/
    execute if predicate world_manager:area/10.nether run function world_manager:area/10.nether/
    execute if predicate world_manager:area/20.end run function world_manager:area/20.end/
# 次のエリア情報を戻す
    scoreboard players operation @s InArea = $NextInArea Temporary
    scoreboard players operation @s InSubArea = $NextInSubArea Temporary
# リセット
    scoreboard players reset $NextInArea Temporary
    scoreboard players reset $NextInSubArea Temporary
