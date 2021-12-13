#> asset:sacred_treasure/0249.wakinyan/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:249} run function asset:sacred_treasure/0249.wakinyan/give/2.give
