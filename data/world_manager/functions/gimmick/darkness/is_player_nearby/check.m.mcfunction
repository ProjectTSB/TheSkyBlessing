#> world_manager:gimmick/darkness/is_player_nearby/check.m
#
#
#
# @input args
#   X: int
#   Y: int
#   Z: int
# @output args IsPlayerNearby: boolean
# @within function world_manager:gimmick/darkness/is_player_nearby/

$return run execute positioned ~$(X) ~$(Y) ~$(Z) if entity @a[distance=..8,limit=1]
