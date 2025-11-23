#> asset:artifact/example/equip/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
# ここで自身の神器が判定をしてmain処理を呼び出す
#
# @within tag/function asset:artifact/**

# storage asset:context idのfeet/legs/chest/head/mainhand/offhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:65535} run function asset:artifact/example/equip/2.check_condition
