#> world_manager:nexus_loader/try_load_asset/construct.m
# @input args
#   Type: string
#   X: int
#   Y: int
#   Z: int
# @within function world_manager:nexus_loader/try_load_asset/m

$execute positioned $(X) $(Y) $(Z) run return run function asset_manager:$(Type)/register/construct/
