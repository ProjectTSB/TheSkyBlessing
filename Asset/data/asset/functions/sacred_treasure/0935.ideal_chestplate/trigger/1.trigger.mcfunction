#> asset:sacred_treasure/0935.ideal_chestplate/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:935} run function asset:sacred_treasure/0935.ideal_chestplate/trigger/2.check_condition