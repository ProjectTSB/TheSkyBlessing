#> asset:artifact/0629.ice_armor/trigger/4.fullset
#
#
#
# @within function
#   asset:artifact/0628.ice_helm/trigger/3.main
#   asset:artifact/0629.ice_armor/trigger/3.main
#   asset:artifact/0630.ice_leggings/trigger/3.main
#   asset:artifact/0631.ice_boots/trigger/3.main

# Tag付与
    tag @s add HH.Fullset

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

# 演出
    particle falling_dust diamond_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    particle falling_dust snow_block ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.6 0