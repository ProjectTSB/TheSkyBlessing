#> asset_manager:teleporter/register/construct/m
# @input args
#   X: int
#   Y: int
#   Z: int
# @within function asset_manager:teleporter/register/

$execute positioned $(X) $(Y) $(Z) run return run function asset_manager:teleporter/register/construct/at_pos
