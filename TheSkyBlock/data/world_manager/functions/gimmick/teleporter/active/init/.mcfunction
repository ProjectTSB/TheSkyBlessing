#> world_manager:gimmick/teleporter/active/init/
#
#
#
# @within function world_manager:gimmick/teleporter/active/

# グループIDを取得する
    function oh_my_dat:please
    execute store result score $GroupID Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.GroupID
# グループIDから対象TP先を取得する
    data modify storage world_manager:gimmick GroupData set from storage world_manager:gimmick TeleporterData.Group
    function world_manager:gimmick/teleporter/active/init/find_target_from_id
# 星を召喚する
    execute anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function world_manager:gimmick/teleporter/active/init/star/foreach
# タグ付ける
    tag @s add TeleporterInit
# リセット
    data remove storage world_manager:gimmick GroupData
    data remove storage world_manager:gimmick Targets