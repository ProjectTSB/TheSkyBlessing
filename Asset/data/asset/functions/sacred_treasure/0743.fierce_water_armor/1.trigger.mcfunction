#> asset:sacred_treasure/0743.fierce_water_armor/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:743} run function asset:sacred_treasure/0743.fierce_water_armor/2.check_condition