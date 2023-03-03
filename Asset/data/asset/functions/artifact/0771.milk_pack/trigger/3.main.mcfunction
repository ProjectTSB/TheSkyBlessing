#> asset:artifact/0771.milk_pack/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0771.milk_pack/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# エフェクト消す
    effect clear @s