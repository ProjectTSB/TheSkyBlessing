#> asset:effect/0012.defense_thunder_buff/end/
#
#
#
# @within function asset:effect/0012.defense_thunder_buff/_/end

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,12,0]
    function api:modifier/defense/thunder/remove