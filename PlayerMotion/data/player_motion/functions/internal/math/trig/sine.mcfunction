#> player_motion:internal/math/trig/sine
# @within function player_motion:internal/math/main

$execute store result score $sine PlayerMotion.Internal.Math run data get storage player_motion:sine arr[$(angle)]
execute if score $negative_sine PlayerMotion.Internal.Math matches 1 run scoreboard players operation $sine PlayerMotion.Internal.Math *= $-1 Const
$execute store result score $cosine PlayerMotion.Internal.Math run data get storage player_motion:cosine arr[$(angle)]
