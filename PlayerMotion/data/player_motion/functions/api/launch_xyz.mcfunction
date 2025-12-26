#> player_motion:api/launch_xyz
#
# Launches the player in the input direction
#
# @within function lib:player_motion/launch_xyz

execute if entity @s[type=!player] run return fail
execute on vehicle run return fail

scoreboard players set $function_called PlayerMotion.Internal.Dummy 1
tag @s add PlayerMotion.Launch

scoreboard players operation @s PlayerMotion.Internal.Motion.X += $x PlayerMotion.Api.Launch
scoreboard players operation @s PlayerMotion.Internal.Motion.Y += $y PlayerMotion.Api.Launch
scoreboard players operation @s PlayerMotion.Internal.Motion.Z += $z PlayerMotion.Api.Launch
