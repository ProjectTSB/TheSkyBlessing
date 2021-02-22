#> asset:sacred_treasure/0437.only_the_crabs_know/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{437:auto} run function asset:sacred_treasure/0437.only_the_crabs_know/2.check_condition