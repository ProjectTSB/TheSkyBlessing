#> asset:effect/0002.attack_physical_buff/end/
#
#
#
# @within function asset:effect/0002.attack_physical_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,2,0]
    function api:modifier/attack/physical/remove