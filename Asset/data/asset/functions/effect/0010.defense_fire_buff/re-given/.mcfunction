#> asset:effect/0010.defense_fire_buff/re-given/
#
#
#
# @within function asset:effect/0010.defense_fire_buff/_/re-given

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,10,0]
    function api:modifier/defense/fire/remove

# N*5%の火属性耐性上昇
    data modify storage api: Argument.UUID set value [I;1,3,10,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/fire/add