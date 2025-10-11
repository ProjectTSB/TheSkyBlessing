# > player_motion:internal/math/full_power/tp
execute store result storage player_motion:math pos[0] double 0.1 run scoreboard players get $motion_x player_motion.internal.math
execute store result storage player_motion:math pos[1] double 0.1 run scoreboard players get $motion_y player_motion.internal.math
execute store result storage player_motion:math pos[2] double 0.1 run scoreboard players get $motion_z player_motion.internal.math
data modify entity @s Pos set from storage player_motion:math pos
execute at @s facing 0.0 0.0 0.0 run tp @s 0 0 0 0 ~
execute store result storage player_motion:math magnitude.angle int 1 run data get entity @s Rotation[1] 100