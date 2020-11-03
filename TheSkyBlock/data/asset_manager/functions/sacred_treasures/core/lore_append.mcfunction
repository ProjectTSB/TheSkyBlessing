#> asset_manager:sacred_treasures/core/lore_append
#
# Loreを追加する
#
# @within function
#   asset_manager:sacred_treasures/core/lore_append
#   asset_manager:sacred_treasures/core/set_data

loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasures/core/get_lore.a
data modify entity @s Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[0]
data remove storage asset:sacred_treasure Lore[0]

execute if data storage asset:sacred_treasure Lore[0] run function asset_manager:sacred_treasures/core/lore_append