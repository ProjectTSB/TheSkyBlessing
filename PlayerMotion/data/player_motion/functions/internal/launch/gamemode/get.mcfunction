#> player_motion:internal/launch/gamemode/get
# @within function player_motion:internal/launch/main

execute if entity @s[gamemode=survival] run return run scoreboard players set $mode PlayerMotion.Internal.Gamemode 0
execute if entity @s[gamemode=creative] run return run scoreboard players set $mode PlayerMotion.Internal.Gamemode 1
execute if entity @s[gamemode=adventure] run return run scoreboard players set $mode PlayerMotion.Internal.Gamemode 2
execute if entity @s[gamemode=spectator] run scoreboard players set $mode PlayerMotion.Internal.Gamemode 3
