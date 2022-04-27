#> asset:sacred_treasure/example/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
# ここで自身の神器が判定をしてmain処理を呼び出す
#
# @within tag/function asset:sacred_treasure/**

# storage asset:context idのfeet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{hotbar:[2147483647]} run function asset:sacred_treasure/example/trigger/2.check_condition