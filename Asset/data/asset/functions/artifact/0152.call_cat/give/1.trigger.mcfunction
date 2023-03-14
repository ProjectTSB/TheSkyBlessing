#> asset:artifact/0152.call_cat/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:152} run function asset:artifact/0152.call_cat/give/2.give
