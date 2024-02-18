#> asset:artifact/0629.ice_armor/trigger/5.fullset_dis_equip
#
#
#
# @within function
#   asset:artifact/0628.ice_helm/trigger/dis_equip/main
#   asset:artifact/0629.ice_armor/trigger/dis_equip/main
#   asset:artifact/0630.ice_leggings/trigger/dis_equip/main
#   asset:artifact/0631.ice_boots/trigger/dis_equip/main

# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
    function api:modifier/defense/water/remove

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
    function api:modifier/attack/water/remove

# Tag削除
    tag @s remove HH.Fullset