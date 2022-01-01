#> asset:sacred_treasure/example/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/example/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く
    effect give @s night_vision 999999 0 true