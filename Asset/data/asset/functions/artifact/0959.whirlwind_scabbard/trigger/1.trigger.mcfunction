#> asset:sacred_treasure/0959.whirlwind_scabbard/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[959]} run function asset:sacred_treasure/0959.whirlwind_scabbard/trigger/2.check_condition