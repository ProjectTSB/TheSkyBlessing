#> asset:artifact/0374.thunder_spell/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:374} run function asset:artifact/0374.thunder_spell/give/2.give
