#> asset:sacred_treasure/0682.moonlight_helm/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0682.moonlight_helm/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/head

# ここから先は神器側の効果の処理を書く

# フルセット効果
    execute if data storage asset:context id.all{head:682,chest:683,legs:684,feet:685} run function asset:sacred_treasure/0683.moonlight_armor/4.fullset