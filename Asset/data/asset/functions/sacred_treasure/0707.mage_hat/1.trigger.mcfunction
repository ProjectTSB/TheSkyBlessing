#> asset:sacred_treasure/0707.mage_hat/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:707} run function asset:sacred_treasure/0707.mage_hat/2.check_condition