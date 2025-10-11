# > player_motion:internal/math/full_power/sine
$execute store result score $n_full_exp player_motion.internal.math run data get storage player_motion:trig arr[$(angle)]
scoreboard players operation $n_full_exp player_motion.internal.math *= $motion_y player_motion.internal.math
execute store result score $sub_power player_motion.internal.math run scoreboard players operation $n_full_exp player_motion.internal.math /= #constant.1000 player_motion.internal.const