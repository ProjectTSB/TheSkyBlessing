#> asset:artifact/0730.lake_reflecting_starry_sky/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:730} run function asset:artifact/0730.lake_reflecting_starry_sky/trigger/2.check_condition