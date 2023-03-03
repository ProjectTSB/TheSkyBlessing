#> asset:sacred_treasure/0535.all_night_chestplate/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{chest:535} run function asset:sacred_treasure/0535.all_night_chestplate/trigger/2.check_condition