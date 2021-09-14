#> asset:sacred_treasure/0743.fierce_water_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0743.fierce_water_armor/dis_equip/

# 補正削除

# 物理ダメージ
    data modify storage api: Argument.UUID set value [I;1,1,743,5]
    function api:player_modifier/attack/physical/remove

# 水ダメージ
    data modify storage api: Argument.UUID set value [I;1,1,743,5]
    function api:player_modifier/attack/water/remove

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,743,5]
    function api:player_modifier/defense/water/remove


# フルセット解除
    execute if data storage asset:context id.all{head:742,chest:743,legs:744,feet:745} run function asset:sacred_treasure/0743.fierce_water_armor/5.fullset_dis_equip