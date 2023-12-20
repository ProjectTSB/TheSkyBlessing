#> asset:effect/0014.receive_heal_buff/re-given/
#
#
#
# @within function asset:effect/0014.receive_heal_buff/_/re-given

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,14,0]
    function api:modifier/receive_heal/remove

# N*5%の被回復量上昇
    data modify storage api: Argument.UUID set value [I;1,3,14,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add