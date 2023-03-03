#> asset:artifact/0364.red_knights_sword/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:364} run function asset:artifact/0364.red_knights_sword/give/2.give
