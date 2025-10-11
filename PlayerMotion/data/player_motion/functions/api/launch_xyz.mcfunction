#> player_motion:api/launch_xyz
# Launches the player in the input direction
execute if entity @s[type=!player] run return fail
execute on vehicle run return fail

scoreboard players set $function_called player_motion.internal.dummy 1
tag @s add player_motion.launch

scoreboard players operation @s player_motion.internal.motion.x += $x player_motion.api.launch
scoreboard players operation @s player_motion.internal.motion.y += $y player_motion.api.launch
scoreboard players operation @s player_motion.internal.motion.z += $z player_motion.api.launch