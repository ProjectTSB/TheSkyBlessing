#> asset:effect/0008.defense_physical_buff/remove/
#
#
#
# @within function asset:effect/0008.defense_physical_buff/_/remove

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,8,0]
    function api:modifier/defense/physical/remove