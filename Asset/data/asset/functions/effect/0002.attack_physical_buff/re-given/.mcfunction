#> asset:effect/0002.attack_physical_buff/re-given/
#
#
#
# @within function asset:effect/0002.attack_physical_buff/_/re-given

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,2,0]
    function api:modifier/attack/physical/remove

# N*5%の物理攻撃力上昇
    data modify storage api: Argument.UUID set value [I;1,3,2,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add