#> asset:artifact/0728.magatama_of_soul_eating/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idの%slot%に装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[728]} run function asset:artifact/0728.magatama_of_soul_eating/trigger/2.check_condition