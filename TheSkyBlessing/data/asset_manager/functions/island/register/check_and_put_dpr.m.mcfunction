#> asset_manager:island/register/check_and_put_dpr.m
# @input args
#   ID: int
# @within function asset_manager:island/register/

$return run data modify storage asset:island DPR.$(ID) set value true
