#> asset:effect/0005.attack_water_buff/end/
#
#
#
# @within function asset:effect/0005.attack_water_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,5,0]
    function api:modifier/attack/water/remove