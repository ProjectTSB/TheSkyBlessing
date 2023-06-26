#> asset:artifact/0191.horus_wand/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:191} run function asset:artifact/0191.horus_wand/give/2.give
