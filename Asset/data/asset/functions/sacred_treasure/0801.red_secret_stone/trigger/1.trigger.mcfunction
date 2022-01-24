#> asset:sacred_treasure/0801.red_secret_stone/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのoffhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{offhand:801} run function asset:sacred_treasure/0801.red_secret_stone/trigger/2.check_condition