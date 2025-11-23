#> world_manager:gimmick/darkness/is_player_nearby/
#
#
#
# @input storage world_manager:gimmick Darkness.Check: {X: int, Y: int, Z: int}
# @output args IsPlayerNearby: boolean
# @within function world_manager:gimmick/darkness/do

return run function world_manager:gimmick/darkness/is_player_nearby/check.m with storage world_manager:gimmick Darkness.Check
