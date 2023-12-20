#> asset:effect/0003.attack_magic_buff/given/
#
#
#
# @within function asset:effect/0003.attack_magic_buff/_/given

# N*5%の魔法攻撃力上昇
    data modify storage api: Argument.UUID set value [I;1,3,3,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add