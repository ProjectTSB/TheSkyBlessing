#> asset:artifact/0010.attack_order/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:10} run function asset:artifact/0010.attack_order/give/2.give
