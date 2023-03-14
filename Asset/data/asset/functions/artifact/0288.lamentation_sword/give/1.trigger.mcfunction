#> asset:artifact/0288.lamentation_sword/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:288} run function asset:artifact/0288.lamentation_sword/give/2.give
