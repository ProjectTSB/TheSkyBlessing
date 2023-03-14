#> asset:artifact/0844.closed_eyes_of_love/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[844]} run function asset:artifact/0844.closed_eyes_of_love/trigger/2.check_condition