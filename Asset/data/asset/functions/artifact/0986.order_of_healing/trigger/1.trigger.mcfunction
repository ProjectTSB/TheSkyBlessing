#> asset:sacred_treasure/0986.order_of_healing/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[986]} run function asset:sacred_treasure/0986.order_of_healing/trigger/2.check_condition