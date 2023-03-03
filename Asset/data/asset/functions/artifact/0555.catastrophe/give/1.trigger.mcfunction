#> asset:sacred_treasure/0555.catastrophe/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:555} run function asset:sacred_treasure/0555.catastrophe/give/2.give
