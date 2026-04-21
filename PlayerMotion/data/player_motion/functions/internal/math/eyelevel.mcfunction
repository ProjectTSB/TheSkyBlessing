#> player_motion:internal/math/eyelevel
# @within function player_motion:internal/math/main

# eyelevel=y(eyes)-y(player)
execute anchored eyes positioned ^ ^ ^ if entity @s[distance=...41] run return run scoreboard players set $eyelevel PlayerMotion.Internal.Math 40

execute anchored eyes positioned ^ ^ ^ if entity @s[distance=..1.27] run return run scoreboard players set $eyelevel PlayerMotion.Internal.Math 127

scoreboard players set $eyelevel PlayerMotion.Internal.Math 162
