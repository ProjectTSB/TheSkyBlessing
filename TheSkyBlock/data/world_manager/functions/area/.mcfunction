#> world_manager:area/
#
# エリア管理
#
# @within function core:tick/player

# 次のエリア情報をリセット
    scoreboard players set $NextInArea Temporary 0
    scoreboard players set $NextInSubArea Temporary 0
# 各エリア処理
    execute if predicate world_manager:area/01.god_boundaries run function world_manager:area/01.god_boundaries/
# 次のエリア情報を戻す
    scoreboard players operation @s InArea = $NextInArea Temporary
    scoreboard players operation @s InSubArea = $NextInSubArea Temporary
# リセット
    scoreboard players reset $NextInArea Temporary
    scoreboard players reset $NextInSubArea Temporary