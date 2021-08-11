#> asset:sacred_treasure/0661.rainbow_armor/4.tick_trigger
#
# 指定したイベントタイミングで実行されるfunction
#
# @within tag/function asset:sacred_treasure/**

# storage asset:idのchestに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:660}}},{Slot:102b,tag:{TSB:{ID:661}}},{Slot:101b,tag:{TSB:{ID:662}}},{Slot:100b,tag:{TSB:{ID:663}}}]} run function asset:sacred_treasure/0661.rainbow_armor/5.tick_main
