#> asset:effect/0010.defense_fire_buff/remove/
#
#
#
# @within function asset:effect/0010.defense_fire_buff/_/remove

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,10,0]
    function api:modifier/defense/fire/remove