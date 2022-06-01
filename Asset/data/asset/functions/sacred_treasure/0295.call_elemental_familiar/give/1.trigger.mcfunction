#> asset:sacred_treasure/0295.call_elemental_familiar/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:295} run function asset:sacred_treasure/0973.call_rod_spirit/give/2.give
