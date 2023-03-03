#> asset:sacred_treasure/0870.samurai_blade/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:870} run function asset:sacred_treasure/0870.samurai_blade/trigger/2.check_condition