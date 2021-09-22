#> asset:sacred_treasure/0661.rainbow_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0661.rainbow_armor/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
# 補正の削除
    function api:player_modifier/defense/base/remove

# フルセット補正の削除
    execute if data storage asset:context id.all{head:660,chest:661,legs:662,feet:663} run function asset:sacred_treasure/0661.rainbow_armor/7.fullset_dis_equip