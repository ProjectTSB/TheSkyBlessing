#> player_motion:internal/math/looking_to_xyz
# @within function player_motion:api/launch_looking

$tp @s ^ ^ ^$(strength)
data modify storage player_motion:math motion set from entity @s Pos
tp @s 0.0 0.0 0.0
