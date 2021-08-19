#> asset:sacred_treasure/0625.flame_armor/5.fullset_dis_equip
#
#
#
# @within function asset:sacred_treasure/0624.flame_helm/dis_equip/main
# @within function asset:sacred_treasure/0625.flame_armor/dis_equip/main
# @within function asset:sacred_treasure/0626.flame_leggings/dis_equip/main
# @within function asset:sacred_treasure/0627.flame_boots/dis_equip/main


# UUID
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
# 補正の削除
    function api:player_modifier/defense/fire/remove