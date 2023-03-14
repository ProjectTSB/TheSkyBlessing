#> asset:artifact/0740.flower_of_hazy_moon/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[740]} run function asset:artifact/0740.flower_of_hazy_moon/trigger/2.check_condition