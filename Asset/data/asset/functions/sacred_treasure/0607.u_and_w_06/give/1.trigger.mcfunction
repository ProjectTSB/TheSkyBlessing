#> asset:sacred_treasure/0607.u_and_w_06/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:607} run function asset:sacred_treasure/0607.u_and_w_06/give/2.give
