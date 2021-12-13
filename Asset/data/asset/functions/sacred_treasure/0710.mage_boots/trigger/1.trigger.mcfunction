#> asset:sacred_treasure/0710.mage_boots/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:710} run function asset:sacred_treasure/0710.mage_boots/trigger/2.check_condition