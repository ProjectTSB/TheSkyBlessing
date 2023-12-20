#> asset:effect/0006.attack_thunder_buff/end/
#
#
#
# @within function asset:effect/0006.attack_thunder_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,6,0]
    function api:modifier/attack/thunder/remove