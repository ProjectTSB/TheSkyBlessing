#> asset_manager:container/register/check_and_put_dpr.m
# @input args
#   ID: int
# @within function asset_manager:container/register/

$return run data modify storage asset:container DPR.$(ID) set value true
