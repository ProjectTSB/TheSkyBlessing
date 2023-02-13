#> asset:sacred_treasure/1021.call_brave_knight/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:1021} run function asset:sacred_treasure/1021.call_brave_knight/trigger/2.check_condition