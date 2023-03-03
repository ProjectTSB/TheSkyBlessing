#> asset:artifact/0920.dal_i_thalion/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのfeetに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{feet:920} run function asset:artifact/0920.dal_i_thalion/trigger/2.check_condition