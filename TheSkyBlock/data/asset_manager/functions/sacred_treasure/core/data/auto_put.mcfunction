#> asset_manager:sacred_treasure/core/data/auto_put
#
#
#
# @within function asset_manager:sacred_treasure/triggers/*

# 初期化
    data remove storage asset:context id.auto
# Itemsにデータ入れる
    data modify storage asset:context Items.AutoSlot set from storage asset:sacred_treasure Argument.AutoSlot
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"mainhand"} run data modify storage asset:context id.auto set from storage asset:context Items.mainhand.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"offhand"} run data modify storage asset:context id.auto set from storage asset:context Items.offhand.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"feet"} run data modify storage asset:context id.auto set from storage asset:context Items.feet.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"legs"} run data modify storage asset:context id.auto set from storage asset:context Items.legs.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"chest"} run data modify storage asset:context id.auto set from storage asset:context Items.chest.tag.TSB.ID
    execute if data storage asset:sacred_treasure Argument{AutoSlot:"head"} run data modify storage asset:context id.auto set from storage asset:context Items.head.tag.TSB.ID
# リセット
    data remove storage asset:sacred_treasure Argument