#> world_manager:gimmick/teleporter/data/revert
#
#
#
# @within function
#   world_manager:gimmick/teleporter/init/
#   world_manager:gimmick/teleporter/dynamic_register/do

# データ戻す(順不同なので)
    data modify storage world_manager:gimmick TeleporterGroups append from storage world_manager:gimmick TeleporterGroup
# リセット
    data remove storage world_manager:gimmick TeleporterGroup