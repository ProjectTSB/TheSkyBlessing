#> player_motion:internal/launch/main
# Launches players in the input direction

execute store result storage player_motion:math motion[0] double 0.0001 store result storage player_motion:math motion_x double 0.0001 run scoreboard players operation $motion_x player_motion.internal.math = @s player_motion.internal.motion.x
execute store result storage player_motion:math motion[1] double 0.0001 store result storage player_motion:math motion_y double 0.0001 run scoreboard players operation $motion_y player_motion.internal.math = @s player_motion.internal.motion.y
execute store result storage player_motion:math motion[2] double 0.0001 store result storage player_motion:math motion_z double 0.0001 run scoreboard players operation $motion_z player_motion.internal.math = @s player_motion.internal.motion.z

execute in minecraft:overworld run function player_motion:internal/math/main
# attribute @s explosion_knockback_resistance modifier add player_motion:disable_knockback_resistance -1 add_multiplied_total
function player_motion:internal/launch/gamemode/get
gamemode creative
tp ~ ~10000 ~
execute rotated as @s positioned ~ ~10000 ~ run function player_motion:internal/summon/main with storage player_motion:math
tp ~ ~ ~
function player_motion:internal/launch/gamemode/restore
# attribute @s explosion_knockback_resistance modifier remove player_motion:disable_knockback_resistance

scoreboard players set $function_called player_motion.internal.dummy 0
tag @s remove player_motion.launch

# Reset scoreboards
scoreboard players reset @s player_motion.internal.motion.x
scoreboard players reset @s player_motion.internal.motion.y
scoreboard players reset @s player_motion.internal.motion.z
