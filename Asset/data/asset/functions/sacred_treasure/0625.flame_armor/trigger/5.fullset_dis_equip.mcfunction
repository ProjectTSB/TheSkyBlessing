#> asset:sacred_treasure/0625.flame_armor/trigger/5.fullset_dis_equip
#
#
#
# @within function
#   asset:sacred_treasure/0624.flame_helm/trigger/dis_equip/main
#   asset:sacred_treasure/0625.flame_armor/trigger/dis_equip/main
#   asset:sacred_treasure/0626.flame_leggings/trigger/dis_equip/main
#   asset:sacred_treasure/0627.flame_boots/trigger/dis_equip/main

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
# 補正の削除
    function api:player_modifier/defense/fire/remove