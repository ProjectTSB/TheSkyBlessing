#> asset:sacred_treasure/0733.persantage_sword/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0733.persantage_sword/2.check_condition
    #declare score_holder $KD.MaxHP

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く

    execute at @e[type=#lib:living,type=!player,distance=..5] run particle minecraft:dust_color_transition 0 0 1 1 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 40 normal @a
