#> lib:damage/core/health_subtract/player
#
#
#
# @within function lib:damage/core/health_subtract/

scoreboard players operation $Fluctuation Lib = $Damage Temporary
scoreboard players operation $Fluctuation Lib /= $-100 Const
function lib:score_to_health_wrapper/fluctuation