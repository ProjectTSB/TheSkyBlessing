#> asset_manager:teleporter/register/check_and_put_dpr.m
# @input args
#   ID: int
# @within function asset_manager:teleporter/register/

$return run data modify storage asset:teleporter DPR.$(ID) set value true
