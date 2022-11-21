#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのautoに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:1018} run function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/2.check_condition