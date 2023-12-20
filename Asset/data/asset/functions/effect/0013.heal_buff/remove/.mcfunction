#> asset:effect/0013.heal_buff/remove/
#
#
#
# @within function asset:effect/0013.heal_buff/_/remove

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,13,0]
    function api:modifier/heal/remove