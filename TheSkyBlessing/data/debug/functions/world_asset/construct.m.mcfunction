#> debug:world_asset/construct.m
# @input args
#   Type: string
#   X: int
#   Y: int
#   Z: int
# @within function debug:world_asset/force_fetch.m

$execute positioned $(X) $(Y) $(Z) run return run function asset_manager:$(Type)/register/construct/
