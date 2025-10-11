#> player_motion:internal/math/full_power/sine
# @within function player_motion:internal/math/full_power/trig

$execute store result score $n_full_exp PlayerMotion.Internal.Math run data get storage player_motion:trig arr[$(angle)]
scoreboard players operation $n_full_exp PlayerMotion.Internal.Math *= $motion_y PlayerMotion.Internal.Math
execute store result score $sub_power PlayerMotion.Internal.Math run scoreboard players operation $n_full_exp PlayerMotion.Internal.Math /= $1000 Const
