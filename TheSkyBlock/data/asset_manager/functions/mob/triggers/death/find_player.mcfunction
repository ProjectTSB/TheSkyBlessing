#> asset_manager:mob/triggers/death/find_player
#
# 殺したプレイヤーを特定します
#
# @within function asset_manager:mob/triggers/death/

#> Private
# @private
    #declare score_holder $isSuccess

# UUIDの取得
    function api:data_get/uuid
    data modify storage asset:mob Temp set from storage api: UUID
# 比較
    execute store success score $isSuccess Temporary run data modify storage asset:mob Temp set from storage asset:mob UUID
# 当人ならtag追加
    execute if score $isSuccess Temporary matches 0 run tag @s add Killer
# リセット
    data remove storage asset:mob Temp
    scoreboard players reset $isSuccess Temporary