#> asset:sacred_treasure/0629.ice_armor/5.fullset_disequip
#
#
#
# @within function asset:sacred_treasure/0628.ice_helm/dis_equip/main
# @within function asset:sacred_treasure/0629.ice_armor/dis_equip/main
# @within function asset:sacred_treasure/0630.ice_leggings/dis_equip/main
# @within function asset:sacred_treasure/0631.ice_boots/dis_equip/main


# UUID
    data modify storage api: Argument.UUID set value [I;1,1,629,0]
# 補正の削除
    function api:player_modifier/defense/water/remove

# タグ削除
    tag @s remove HH.FullSet