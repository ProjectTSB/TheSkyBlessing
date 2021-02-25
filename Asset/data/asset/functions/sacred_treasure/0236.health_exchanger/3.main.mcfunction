#> asset:sacred_treasure/0236.health_exchanger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0236.health_exchanger/2.check_condition

#> private
# @private
    #declare score_holder $OwnHealth
    #declare score_holder $MaxHealth

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    say test: 0236.health_exchanger