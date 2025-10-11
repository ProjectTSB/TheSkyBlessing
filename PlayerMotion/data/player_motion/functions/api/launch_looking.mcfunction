#> player_motion:api/launch_looking
#
# Launches the player in the input direction
#
# @user
# @api

execute if entity @s[type=!player] run return fail
execute on vehicle run return fail

scoreboard players set $function_called PlayerMotion.Internal.Dummy 1
tag @s add PlayerMotion.Launch

execute store result storage player_motion:math strength double 0.0001 run scoreboard players get $strength PlayerMotion.Api.Launch
execute as 0-0-0-0-0 in minecraft:overworld positioned 0.0 0.0 0.0 run function player_motion:internal/math/looking_to_xyz with storage player_motion:math

execute store result score $out PlayerMotion.Internal.Motion.X run data get storage player_motion:math motion[0] 10000
execute store result score $out PlayerMotion.Internal.Motion.Y run data get storage player_motion:math motion[1] 10000
execute store result score $out PlayerMotion.Internal.Motion.Z run data get storage player_motion:math motion[2] 10000

scoreboard players operation @s PlayerMotion.Internal.Motion.X += $out PlayerMotion.Internal.Motion.X
scoreboard players operation @s PlayerMotion.Internal.Motion.Y += $out PlayerMotion.Internal.Motion.Y
scoreboard players operation @s PlayerMotion.Internal.Motion.Z += $out PlayerMotion.Internal.Motion.Z
