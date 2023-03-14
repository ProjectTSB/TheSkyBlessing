#> asset:artifact/0647.thorn_armor/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:647} run function asset:artifact/0647.thorn_armor/give/2.give
