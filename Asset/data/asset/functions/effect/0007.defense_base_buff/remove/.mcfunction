#> asset:effect/0007.defense_base_buff/remove/
#
#
#
# @within function asset:effect/0007.defense_base_buff/_/remove

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,7,0]
    function api:modifier/defense/base/remove