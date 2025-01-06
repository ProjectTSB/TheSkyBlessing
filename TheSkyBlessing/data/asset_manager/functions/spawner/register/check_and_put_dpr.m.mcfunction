#> asset_manager:spawner/register/check_and_put_dpr.m
# @input args
#   ID: int
# @within function asset_manager:spawner/register/

$return run data modify storage asset:spawner DPR.$(ID) set value true
