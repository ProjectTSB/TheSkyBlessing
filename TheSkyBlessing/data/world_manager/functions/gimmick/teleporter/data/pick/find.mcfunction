#> world_manager:gimmick/teleporter/data/pick/find
#
#
#
# @within function world_manager:gimmick/teleporter/data/pick/*

#> Temp
# @private
#declare score_holder $TargetID

# indexデクリメント
    scoreboard players remove $Argument.Index Temporary 1
# IDが同一ならTargetに設定する
    execute store result score $TargetID Temporary run data get storage world_manager:gimmick TeleporterGroups[-1].ID
    execute if score $GroupID Temporary = $TargetID Temporary run data modify storage world_manager:gimmick TeleporterGroup set from storage world_manager:gimmick TeleporterGroups[-1]
# 末尾を退避して削除する
    execute unless score $GroupID Temporary = $TargetID Temporary run data modify storage world_manager:gimmick TeleporterGroupsStash append from storage world_manager:gimmick TeleporterGroups[-1]
    data remove storage world_manager:gimmick TeleporterGroups[-1]
# リセット
    scoreboard players reset $TargetID Temporary
# まだ見つかってないかつ要素があるなら再帰
    execute unless data storage world_manager:gimmick TeleporterGroup if data storage world_manager:gimmick TeleporterGroups[0] run function world_manager:gimmick/teleporter/data/pick/find