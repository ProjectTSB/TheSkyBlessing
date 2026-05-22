#> player_motion:internal/technical/load
# @within tag/function minecraft:load

# TICK FUNCTION
schedule function player_motion:internal/technical/tick 1t append

# LOAD ONCE
execute unless data storage player_motion: {Loaded:1b} run function player_motion:internal/technical/load_once
