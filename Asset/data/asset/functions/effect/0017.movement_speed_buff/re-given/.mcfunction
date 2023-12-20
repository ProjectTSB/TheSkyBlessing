#> asset:effect/0017.movement_speed_buff/re-given/
#
#
#
# @within function asset:effect/0017.movement_speed_buff/_/re-given

# リセットする
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-001100000000

# N*0.05の移動速度上昇
    execute store result storage asset:context Temp double 0.05 run data get storage asset:context Stack 1
    function asset:effect/0017.movement_speed_buff/re-given/attribute