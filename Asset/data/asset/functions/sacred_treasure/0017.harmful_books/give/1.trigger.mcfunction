#> asset:sacred_treasure/0017.harmful_books/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:17} run function asset:sacred_treasure/0017.harmful_books/give/2.give
