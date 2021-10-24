#> asset:sacred_treasure/0267.instant_priest_set_lv.10/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0267.instant_priest_set_lv.10/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    function asset:sacred_treasure/0268.heal_lv.10/_.give
    function asset:sacred_treasure/0269.holy_symbol_lv.10/_.give
    function asset:sacred_treasure/0270.angel_ray_lv.10/_.give