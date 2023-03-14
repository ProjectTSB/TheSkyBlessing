#> asset:artifact/0456.potion_of_stalling_power/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:456} run function asset:artifact/0456.potion_of_stalling_power/give/2.give
