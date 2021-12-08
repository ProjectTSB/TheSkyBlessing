#> asset:sacred_treasure/0272.infinity_food/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:272} run function asset:sacred_treasure/0272.infinity_food/give/2.give
