#> asset:effect/0017.movement_speed_buff/given/
#
#
#
# @within function asset:effect/0017.movement_speed_buff/_/given

# N*0.05の移動速度上昇
    execute store result storage asset:context Temp double 0.05 run data get storage asset:context Stack 1
    function asset:effect/0017.movement_speed_buff/given/attribute