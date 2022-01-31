#> world_manager:gimmick/teleporter/data/pick/
#
#
#
# @input storage world_manager:gimmick TargetGroupID
#
# @within function
#   world_manager:gimmick/teleporter/active/init/
#   world_manager:gimmick/teleporter/dynamic_register/do

#> Temporary
# @private
#declare score_holder $GroupID

# 初期化
    data remove storage world_manager:gimmick Target
    execute store result score $GroupID Temporary run data get storage world_manager:gimmick TargetGroupID
    data modify storage world_manager:gimmick TeleporterGroupsStash set value []
# 探索
    execute if data storage world_manager:gimmick TeleporterGroups[0] run function world_manager:gimmick/teleporter/data/pick/find
# 退避していた要素を元に戻す
    data modify storage world_manager:gimmick TeleporterGroups append from storage world_manager:gimmick TeleporterGroupsStash[]
# リセット
    scoreboard players reset $GroupID Temporary
    data remove storage world_manager:gimmick TargetGroupID
    data remove storage world_manager:gimmick TeleporterGroupsStash