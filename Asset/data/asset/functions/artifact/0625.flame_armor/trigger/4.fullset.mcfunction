#> asset:artifact/0625.flame_armor/trigger/4.fullset
#
#
#
# @within function
#   asset:artifact/0624.flame_helm/trigger/3.main
#   asset:artifact/0625.flame_armor/trigger/3.main
#   asset:artifact/0626.flame_leggings/trigger/3.main
#   asset:artifact/0627.flame_boots/trigger/3.main

# Tag付与
    tag @s add HD.Fullset

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 演出
    particle flame ~ ~1.2 ~ 0.4 0.5 0.4 0 20 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.2 0