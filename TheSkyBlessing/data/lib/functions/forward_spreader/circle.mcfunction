#> lib:forward_spreader/circle
#
# 実行entityを前方の円状範囲内のランダムな座標に移動させます
#
# @input
#   as entity
#   position
#   rotation
#   storage lib:
#       Argument.Distance : float
#       Argument.Spread : float
# @public

scoreboard players set $CircleRandomizerMode Temporary 1
function lib:forward_spreader/core/
scoreboard players reset $CircleRandomizerMode Temporary