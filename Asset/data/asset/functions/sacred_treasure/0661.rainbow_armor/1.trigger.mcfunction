#> asset:sacred_treasure/0661.rainbow_armor/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
 execute if data storage asset:context id{chest:661} run function asset:sacred_treasure/0661.rainbow_armor/2.check_condition