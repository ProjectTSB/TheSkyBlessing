#> asset:sacred_treasure/0661.rainbow_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0661.rainbow_armor/dis_equip/

# 全属性の補正を削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
# 補正の削除
    function api:player_modifier/defense/water/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,5]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# フルセット補正の削除
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:660}}},{Slot:102b,tag:{TSB:{ID:661}}},{Slot:101b,tag:{TSB:{ID:662}}},{Slot:100b,tag:{TSB:{ID:663}}}]} run function asset:sacred_treasure/0661.rainbow_armor/7.disequip_fullset