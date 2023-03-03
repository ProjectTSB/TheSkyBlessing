#> asset:sacred_treasure/0917.flame_hunter_clothes/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのlegsに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{legs:917} run function asset:sacred_treasure/0917.flame_hunter_clothes/trigger/2.check_condition