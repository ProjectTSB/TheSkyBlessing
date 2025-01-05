#> world_manager:nexus_loader/try_load_asset.m
#
#
#
# @input args
#   Type: string
# @within function world_manager:nexus_loader/load/fetch

$data modify storage asset:$(Type) ID set from storage world_manager:nexus_loader ResourceID
$return run function asset_manager:$(Type)/register/
