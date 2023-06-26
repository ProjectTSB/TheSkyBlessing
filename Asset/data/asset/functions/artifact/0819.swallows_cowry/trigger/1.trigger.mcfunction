#> asset:artifact/0819.swallows_cowry/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:819} run function asset:artifact/0819.swallows_cowry/trigger/2.check_condition