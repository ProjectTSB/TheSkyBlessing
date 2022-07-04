#> asset:sacred_treasure/0089.magic_hoe/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:89} run function asset:sacred_treasure/0089.magic_hoe/trigger/2.check_condition