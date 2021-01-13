#> asset:sacred_treasure/0043.fruit_of_wisdom/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:id {auto:43} run function asset:sacred_treasure/0043.fruit_of_wisdom/2.check_condition