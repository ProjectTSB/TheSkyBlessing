#> asset:sacred_treasure/0928.ankh/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのhotbarに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[928]} run function asset:sacred_treasure/0928.ankh/trigger/2.check_condition
