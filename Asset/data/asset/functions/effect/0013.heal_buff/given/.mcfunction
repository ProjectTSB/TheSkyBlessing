#> asset:effect/0013.heal_buff/given/
#
#
#
# @within function asset:effect/0013.heal_buff/_/given

# N*5%の回復量上昇
    data modify storage api: Argument.UUID set value [I;1,3,13,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add