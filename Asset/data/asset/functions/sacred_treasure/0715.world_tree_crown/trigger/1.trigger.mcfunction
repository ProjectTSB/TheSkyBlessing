#> asset:sacred_treasure/0715.world_tree_crown/trigger/1.trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのheadに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{head:715} run function asset:sacred_treasure/0715.world_tree_crown/trigger/2.check_condition