#> asset:sacred_treasure/0567.great_sage_chestplate/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:567} run function asset:sacred_treasure/0567.great_sage_chestplate/trigger/2.check_condition