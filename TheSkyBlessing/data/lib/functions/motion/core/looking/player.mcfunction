#> lib:motion/core/looking/player
#
#
#
# @within function lib:motion/core/looking/

# PlayerMotionを呼び出す
    scoreboard players operation $strength PlayerMotion.Api.Launch = $VectorMagnitude Temporary
    function player_motion:api/launch_looking
