#> player_manager:arrow/init/search
# @within function
#   player_manager:arrow/init/
#   player_manager:arrow/init/search

#> private
# @private
    #declare score_holder $isNotOwner

# プレイヤーのUUIDを取得
    function api:data_get/uuid
    data modify storage player_manager:arrow PlayerUUID set from storage api: UUID
# チェックする
    execute store success score $isNotOwner Temporary run data modify storage player_manager:arrow PlayerUUID set from storage player_manager:arrow TargetUUID
# 一致していれば結びつける
    execute if score $isNotOwner Temporary matches 0 run scoreboard players operation @e[type=#arrows,tag=InitArrow,limit=1] ArrowOwnerUserID = @s UserID

# リセット
    scoreboard players reset $isNotOwner Temporary
    data remove storage player_manager:arrow PlayerUUID
