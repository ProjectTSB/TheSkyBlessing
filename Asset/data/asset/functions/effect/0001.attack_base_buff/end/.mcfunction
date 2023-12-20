#> asset:effect/0001.attack_base_buff/end/
#
#
#
# @within function asset:effect/0001.attack_base_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,1,0]
    function api:modifier/attack/base/remove