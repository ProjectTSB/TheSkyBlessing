#> asset:sacred_treasure/0079.shoot_down_a_flying_dragon/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:sacred_treasure/give

execute if data storage asset:context {id:79} run function asset:sacred_treasure/0079.shoot_down_a_flying_dragon/give/2.give
