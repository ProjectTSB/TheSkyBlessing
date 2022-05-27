#> asset_manager:teleporter/data/revert
#
#
#
# @within function
#   asset_manager:teleporter/star_init/
#   asset_manager:teleporter/dynamic_register/do

# データ戻す(順不同なので)
    data modify storage asset:teleporter TeleporterGroups append from storage asset:teleporter TeleporterGroup
# リセット
    data remove storage asset:teleporter TeleporterGroup