#> world_manager:gimmick/teleporter/active/init/find_target_from_id
#
#
#
# @within function
#   world_manager:gimmick/teleporter/active/init/*
#   world_manager:gimmick/teleporter/active/init/find_target_from_id

#> Temp
# @private
#declare score_holder $TargetID

# { ID: int, Children: { Pos: [double, double, double], Data: { Activate: boolean } }[] }
# IDが同一ならTargetに設定する
    execute store result score $TargetID Temporary run data get storage world_manager:gimmick GroupData[-1].ID
    execute if score $GroupID Temporary = $TargetID Temporary run data modify storage world_manager:gimmick Targets set from storage world_manager:gimmick GroupData[-1].Children
# 末尾削除する
    data remove storage world_manager:gimmick GroupData[-1]
# リセット
    scoreboard players reset $TargetID Temporary
# まだ見つかってないかつ要素があるなら再帰
    execute unless data storage world_manager:gimmick Targets if data storage world_manager:gimmick GroupData[0] run function world_manager:gimmick/teleporter/active/init/find_target_from_id