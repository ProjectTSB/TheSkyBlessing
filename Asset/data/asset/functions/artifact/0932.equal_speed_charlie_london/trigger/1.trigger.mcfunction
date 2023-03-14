#> asset:artifact/0932.equal_speed_charlie_london/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[932]} run function asset:artifact/0932.equal_speed_charlie_london/trigger/2.check_condition