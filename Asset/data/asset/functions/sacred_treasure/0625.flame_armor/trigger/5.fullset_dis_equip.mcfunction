#> asset:sacred_treasure/0625.flame_armor/trigger/5.fullset_dis_equip
#
#
#
# @within function
#   asset:sacred_treasure/0624.flame_helm/trigger/dis_equip/main
#   asset:sacred_treasure/0625.flame_armor/trigger/dis_equip/main
#   asset:sacred_treasure/0626.flame_leggings/trigger/dis_equip/main
#   asset:sacred_treasure/0627.flame_boots/trigger/dis_equip/main

# Tag削除
    tag @s add HD.Fullset

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
    function api:player_modifier/defense/fire/remove

# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
    function api:player_modifier/attack/fire/remove