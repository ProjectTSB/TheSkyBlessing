#> asset:sacred_treasure/0629.ice_armor/trigger/5.fullset_dis_equip
#
#
#
# @within function
#   asset:sacred_treasure/0628.ice_helm/trigger/dis_equip/main
#   asset:sacred_treasure/0629.ice_armor/trigger/dis_equip/main
#   asset:sacred_treasure/0630.ice_leggings/trigger/dis_equip/main
#   asset:sacred_treasure/0631.ice_boots/trigger/dis_equip/main

# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# Tag削除
    tag @s remove HH.Fullset