#> asset:effect/0006.attack_thunder_buff/re-given/
#
#
#
# @within function asset:effect/0006.attack_thunder_buff/_/re-given

# リセットする
    data modify storage api: Argument.UUID set value [I;1,3,6,0]
    function api:modifier/attack/thunder/remove

# N*5%の雷属性攻撃力上昇
    data modify storage api: Argument.UUID set value [I;1,3,6,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add