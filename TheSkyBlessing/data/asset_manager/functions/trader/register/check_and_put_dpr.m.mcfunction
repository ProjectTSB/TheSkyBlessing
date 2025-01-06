#> asset_manager:trader/register/check_and_put_dpr.m
# @input args
#   ID: int
# @within function asset_manager:trader/register/

$return run data modify storage asset:trader DPR.$(ID) set value true
