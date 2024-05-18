#> asset:artifact/0633.elec_armor/trigger/4.fullset
#
#
#
# @within function
#   asset:artifact/0632.elec_helm/trigger/3.main
#   asset:artifact/0633.elec_armor/trigger/3.main
#   asset:artifact/0634.elec_leggings/trigger/3.main
#   asset:artifact/0635.elec_boots/trigger/3.main

# Tag付与
    tag @s add HL.Fullset

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,633,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,633,0]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# 演出
    particle dust 1 1 0 1 ~ ~1.2 ~ 0.4 0.5 0.4 0 25 normal @a
    particle firework ~ ~1.2 ~ 0.4 0.5 0.4 0 15 normal @a
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.7 0