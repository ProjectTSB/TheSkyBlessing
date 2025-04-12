#> asset_manager:artifact/create/set_lore/parts_max
#
#
#
# @within function asset_manager:artifact/create/set_lore/

# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/parts_max
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[0]
