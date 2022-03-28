#> asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:816} run function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/2.check_condition