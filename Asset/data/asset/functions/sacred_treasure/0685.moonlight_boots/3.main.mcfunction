#> asset:sacred_treasure/0685.moonlight_boots/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0685.moonlight_boots/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/feet

# ここから先は神器側の効果の処理を書く

# フルセット効果
    execute if data storage asset:context id.all{head:682,chest:683,legs:684,feet:685} run function asset:sacred_treasure/0683.moonlight_armor/4.fullset