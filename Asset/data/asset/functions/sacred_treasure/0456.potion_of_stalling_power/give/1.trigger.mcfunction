#> asset:sacred_treasure/0456.potion_of_stalling_power/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:456} run function asset:sacred_treasure/0456.potion_of_stalling_power/give/2.give
