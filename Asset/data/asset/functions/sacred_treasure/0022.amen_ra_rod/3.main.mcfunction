#> asset:sacred_treasure/0022.amen_ra_rod/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0022.amen_ra_rod/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    say test: 0022.amen_ra_rod

# 発光を付与
effect give @e[type=!player,distance=..30] minecraft:glowing 60 0 true