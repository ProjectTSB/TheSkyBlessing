#> player_motion:internal/math/full_power/tp
# @within function player_motion:internal/math/full_power/trig

execute store result storage player_motion:math pos[0] double 0.1 run scoreboard players get $motion_x PlayerMotion.Internal.Math
execute store result storage player_motion:math pos[1] double 0.1 run scoreboard players get $motion_y PlayerMotion.Internal.Math
execute store result storage player_motion:math pos[2] double 0.1 run scoreboard players get $motion_z PlayerMotion.Internal.Math
data modify entity @s Pos set from storage player_motion:math pos
execute at @s facing 0.0 0.0 0.0 run tp @s 0 0 0 0 ~
function api:data_get/rotation
execute store result storage player_motion:math magnitude.angle int 1 run data get storage api: Rotation[1] 100
