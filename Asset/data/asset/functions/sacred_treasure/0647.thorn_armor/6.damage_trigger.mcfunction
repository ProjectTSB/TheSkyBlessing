#> asset:sacred_treasure/0647.thorn_armor/6.damage_trigger
#
#
#
# @within tag/function asset:sacred_treasure/damage/from_entity/

# フルセットなら実行
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:646}}},{Slot:102b,tag:{TSB:{ID:647}}},{Slot:101b,tag:{TSB:{ID:648}}},{Slot:100b,tag:{TSB:{ID:649}}}]} run function asset:sacred_treasure/0647.thorn_armor/7.check_condition
