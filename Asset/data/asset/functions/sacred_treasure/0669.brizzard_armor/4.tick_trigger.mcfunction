#> asset:sacred_treasure/0669.brizzard_armor/4.tick_trigger
#
#
#
# @within tag/function asset:sacred_treasure/tick

# 一式装備時に実行
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:668}}},{Slot:102b,tag:{TSB:{ID:669}}},{Slot:101b,tag:{TSB:{ID:670}}},{Slot:100b,tag:{TSB:{ID:671}}}]} run function asset:sacred_treasure/0669.brizzard_armor/5.tick