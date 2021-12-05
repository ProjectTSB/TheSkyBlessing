#> asset:sacred_treasure/0259.instant_priest_set_lv.1/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0259.instant_priest_set_lv.1/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    function asset:sacred_treasure/0260.heal_lv.1/_.give
    function asset:sacred_treasure/0261.holy_symbol_lv.1/_.give
    function asset:sacred_treasure/0262.angel_ray_lv.1/_.give