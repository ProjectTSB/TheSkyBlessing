#> asset:artifact/0626.flame_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0626.flame_leggings/trigger/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,626,4]
# 補正の削除
    function api:modifier/defense/fire/remove

# 演出
    playsound entity.generic.burn player @a ~ ~ ~ 0.2 1 0

# フルセットの耐性削除
    execute if data storage asset:context id.all{head:624,chest:625,legs:626,feet:627} run function asset:artifact/0625.flame_armor/trigger/5.fullset_dis_equip