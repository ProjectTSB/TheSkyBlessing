#> asset:artifact/0108.vacuum_hopper/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:108} run function asset:artifact/0108.vacuum_hopper/give/2.give
