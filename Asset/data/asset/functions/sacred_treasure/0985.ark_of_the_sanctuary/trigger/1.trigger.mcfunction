#> asset:sacred_treasure/0985.ark_of_the_sanctuary/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:985} run function asset:sacred_treasure/0985.ark_of_the_sanctuary/trigger/2.check_condition