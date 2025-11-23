#> world_manager:nexus_loader/try_load_asset/check_and_put_dpr.m
# @input args
#   Type: string
#   ID: int
# @within function world_manager:nexus_loader/try_load_asset/m

$return run data modify storage world_manager:nexus_loader DPR.$(Type).$(ID) set value true
