#> player_motion:internal/technical/tick
# TICK FUNCTION
schedule function player_motion:internal/technical/tick 1t append

# LAUNCH PLAYERS
execute if score $function_called player_motion.internal.dummy matches 1 as @a[tag=player_motion.launch] at @s run function player_motion:internal/launch/main