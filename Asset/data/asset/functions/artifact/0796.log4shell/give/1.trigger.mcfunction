#> asset:artifact/0796.log4shell/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:796} run function asset:artifact/0796.log4shell/give/2.give
