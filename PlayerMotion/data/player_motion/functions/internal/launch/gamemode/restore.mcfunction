#> player_motion:internal/launch/gamemode/restore
# @within function player_motion:internal/launch/main

execute if score $mode PlayerMotion.Internal.Gamemode matches 0 run return run gamemode survival @s
execute if score $mode PlayerMotion.Internal.Gamemode matches 1 run return run gamemode creative @s
execute if score $mode PlayerMotion.Internal.Gamemode matches 2 run return run gamemode adventure @s
execute if score $mode PlayerMotion.Internal.Gamemode matches 3 run gamemode spectator @s
