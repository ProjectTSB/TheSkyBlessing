#> asset:sacred_treasure/0682.moonlight_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0682.moonlight_helm/dis_equip/

# フルセット効果
    execute if data storage asset:context id.all{head:682,chest:683,legs:684,feet:685} run function asset:sacred_treasure/0683.moonlight_armor/9.fullset_dis_equip