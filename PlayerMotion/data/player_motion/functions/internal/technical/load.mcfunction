#> player_motion:internal/technical/load
# @within tag/function minecraft:load

#> STORAGE
# @public
    #declare storage player_motion:math
data modify storage player_motion:math unitvector set value [0.0d,0.0d,0.0d]
data modify storage player_motion:math motion set value [0.0d,0.0d,0.0d]
data modify storage player_motion:math pos set value [0.0d,0.0d,0.0d]

# TICK FUNCTION
schedule function player_motion:internal/technical/tick 1t append

#> OBJECTIVE

    #> Launch Api
    # @api
    scoreboard objectives add PlayerMotion.Api.Launch dummy

    #> Internal
    # @within function player_motion:**
    scoreboard objectives add PlayerMotion.Internal.Dummy dummy
    scoreboard objectives add PlayerMotion.Internal.Math dummy
        scoreboard objectives add PlayerMotion.Internal.Math.Sqrt dummy
    scoreboard objectives add PlayerMotion.Internal.Motion.X dummy
    scoreboard objectives add PlayerMotion.Internal.Motion.Y dummy
    scoreboard objectives add PlayerMotion.Internal.Motion.Z dummy
    scoreboard objectives add PlayerMotion.Internal.Gamemode dummy

#> TAG
# @within function
#   player_motion:api/**
#   player_motion:internal/launch/main
#   player_motion:internal/technical/tick
    #declare tag PlayerMotion.Launch

# FORCELOAD
# forceload add 0 0

# MARKER
# kill d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f
# summon marker 0.0 0.0 0.0 {UUID:[I; -725781337, 1317161479, -2007965756, -660627921], Tags:["smithed.strict", "smithed.entity"]}


# TRIG LOOKUP TABLE:
function player_motion:internal/technical/trig
