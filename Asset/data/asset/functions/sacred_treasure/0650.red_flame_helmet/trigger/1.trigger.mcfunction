#> asset:sacred_treasure/0650.red_flame_helmet/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:650} run function asset:sacred_treasure/0650.red_flame_helmet/trigger/2.check_condition