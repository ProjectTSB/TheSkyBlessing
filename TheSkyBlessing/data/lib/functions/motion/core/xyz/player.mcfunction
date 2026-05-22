#> lib:motion/core/xyz/player
#
#
#
# @within function lib:motion/core/xyz/

# PlayerMotionを呼び出す
    execute store result score $x PlayerMotion.Api.Launch run data get storage lib: Argument.Vector[0] 10000
    execute store result score $y PlayerMotion.Api.Launch run data get storage lib: Argument.Vector[1] 10000
    execute store result score $z PlayerMotion.Api.Launch run data get storage lib: Argument.Vector[2] 10000
    function player_motion:api/launch_xyz
