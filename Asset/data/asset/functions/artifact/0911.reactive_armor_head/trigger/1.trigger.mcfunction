#> asset:artifact/0911.reactive_armor_head/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:911} run function asset:artifact/0911.reactive_armor_head/trigger/2.check_condition