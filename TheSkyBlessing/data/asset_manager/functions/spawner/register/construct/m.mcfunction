#> asset_manager:spawner/register/construct/m
# @input args
#   X: int
#   Y: int
#   Z: int
# @within function asset_manager:spawner/register/

$execute positioned $(X) $(Y) $(Z) run return run function asset_manager:spawner/register/construct/at_pos
