#> lib:forward_spreader/core/randomizer
#
# ランダム座標生成処理
#
# @within function
#   lib:forward_spreader/core/
#   lib:forward_spreader/core/check_distance

execute store result score $VecX Temporary run random value 0..65535
scoreboard players operation $VecX Temporary %= $Diameter Temporary
scoreboard players operation $VecX Temporary -= $Radius Temporary

execute store result score $VecY Temporary run random value 0..65535
scoreboard players operation $VecY Temporary %= $Diameter Temporary
scoreboard players operation $VecY Temporary -= $Radius Temporary

execute if score $CircleRandomizerMode Temporary matches 1 run function lib:forward_spreader/core/check_distance
