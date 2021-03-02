#> asset_manager:sacred_treasure/core/create/lore_append
#
# Loreを追加する
#
# @input
#   as item
#   storage asset:sacred_treasure Lore : TextComponent[]
# @within function
#   asset_manager:sacred_treasure/core/create/lore_append
#   asset_manager:sacred_treasure/core/create/set_lore

loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/get_lore
data modify storage asset:sacred_treasure Data.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[0]
data remove storage asset:sacred_treasure Lore[0]

execute if data storage asset:sacred_treasure Lore[0] run function asset_manager:sacred_treasure/core/create/lore_append