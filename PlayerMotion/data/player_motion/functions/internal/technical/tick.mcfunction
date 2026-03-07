#> player_motion:internal/technical/tick
# @within function
#   player_motion:internal/technical/load
#   player_motion:internal/technical/tick

# TICK FUNCTION
schedule function player_motion:internal/technical/tick 1t append

# LAUNCH PLAYERS
execute if score $function_called PlayerMotion.Internal.Dummy matches 1 as @a[tag=PlayerMotion.Launch] at @s run function player_motion:internal/launch/main
