#> asset:sacred_treasure/example/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/example/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 2.0
    execute anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle
    execute at 0-0-0-0-0 run particle composter ~ ~ ~ 0.05 0.05 0.05 0 100 force
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ facing entity 0-0-0-0-0 feet run function asset:sacred_treasure/example/3.1.test