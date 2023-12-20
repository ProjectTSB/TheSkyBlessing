#> asset:effect/0007.defense_base_buff/re-given/
#
#
#
# @within function asset:effect/0007.defense_base_buff/_/re-given

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,7,0]
    function api:modifier/defense/base/remove

# N*5%の基礎耐性上昇
    data modify storage api: Argument.UUID set value [I;1,3,7,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add