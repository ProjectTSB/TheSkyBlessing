#> asset_manager:trader/register/construct/m
# @input args
#   X: int
#   Y: int
#   Z: int
# @within function asset_manager:trader/register/

$execute positioned $(X) $(Y) $(Z) run return run function asset_manager:trader/register/construct/at_pos
