#> asset:artifact/0999.sextaple_ultima/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:999} run function asset:artifact/0999.sextaple_ultima/trigger/2.check_condition