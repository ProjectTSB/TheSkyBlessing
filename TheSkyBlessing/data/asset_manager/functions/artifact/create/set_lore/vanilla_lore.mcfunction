#> asset_manager:artifact/create/set_lore/vanilla_lore
#
# Loreを追加する
#
# @input
#   as item
#   storage asset:artifact Lore : TextComponent[]
# @within function
#   asset_manager:artifact/create/set_lore/vanilla_lore
#   asset_manager:artifact/create/set_lore/

loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_lore
data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[0]
data remove storage asset:artifact Lore[0]

execute if data storage asset:artifact Lore[0] run function asset_manager:artifact/create/set_lore/vanilla_lore
