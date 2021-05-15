#> asset:sacred_treasure/0334.abunai_kine/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0334.abunai_kine/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    execute as @e[type=#lib:living,distance=..10,sort=random,limit=1] at @s run function asset:sacred_treasure/0334.abunai_kine/attack