#> asset:artifact/0079.shoot_down_a_flying_dragon/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:artifact/**

# storage asset:idのauto/feet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{auto:79} run function asset:artifact/0079.shoot_down_a_flying_dragon/trigger/2.check_condition