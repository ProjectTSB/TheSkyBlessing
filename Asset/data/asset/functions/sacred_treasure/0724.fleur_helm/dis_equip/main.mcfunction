#> asset:sacred_treasure/0724.fleur_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0724.fleur_helm/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
# 補正の削除
    function api:player_modifier/defense/magic/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
# 補正の削除
    function api:player_modifier/defense/water/remove
# UUID
    data modify storage api: Argument.UUID set value [I;1,1,724,6]
# 補正の削除
    function api:player_modifier/heal/remove

# フルセット解除
    execute if data storage asset:context id.all{head:724,chest:725,legs:726,feet:727} run function asset:sacred_treasure/0725.fleur_armor/5.fullset_dis_equip