#> asset:effect/0013.heal_buff/end/
#
#
#
# @within function asset:effect/0013.heal_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,13,0]
    function api:modifier/heal/remove