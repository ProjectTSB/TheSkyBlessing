#> asset_manager:artifact/create/equipment/description
#
# 装備セットによる効果を設定する
#
# @within function asset_manager:artifact/create/equipment/*

loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/equipment_description
data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[]
