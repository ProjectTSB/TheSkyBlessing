#> world_manager:gimmick/teleporter/data/get/
#
#
#
# @input storage world_manager:gimmick TargetGroupID
#
# @within function
#   world_manager:gimmick/teleporter/active/init/
#   world_manager:gimmick/teleporter/dynamic_register/do

# 初期化
    data remove storage world_manager:gimmick Target
    execute store result score $GroupID Temporary run data get storage world_manager:gimmick TargetGroupID
    data modify storage world_manager:gimmick GroupData set from storage world_manager:gimmick TeleporterGroups
    execute store result score $Argument.Index Lib if data storage world_manager:gimmick TeleporterGroups[]
# 探索
    function world_manager:gimmick/teleporter/data/get/find
# リセット
    data remove storage world_manager:gimmick GroupData