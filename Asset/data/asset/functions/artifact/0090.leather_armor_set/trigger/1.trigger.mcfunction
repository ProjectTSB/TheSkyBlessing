#> asset:artifact/0090.leather_armor_set/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:context idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:90} run function asset:artifact/0090.leather_armor_set/trigger/2.check_condition