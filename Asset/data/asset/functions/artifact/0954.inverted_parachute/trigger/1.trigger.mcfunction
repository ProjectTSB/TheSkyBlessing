#> asset:artifact/0954.inverted_parachute/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[954]} run function asset:artifact/0954.inverted_parachute/trigger/2.check_condition
    #execute if data storage asset:context id{offhand:954} run function asset:artifact/0954.inverted_parachute/trigger/2.check_condition