#> asset_manager:artifact/create/set_lore/equipment/description
#
# 装備セットによる効果を設定する
#
# @within function
#   asset_manager:artifact/create/set_lore/equipment/register
#   asset_manager:artifact/create/set_lore/equipment/description

# 配列に追加
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/equipment_description
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[]
# 先頭を削除
    data remove storage asset:effect Description[0]
# 再帰
    execute if data storage asset:effect Description[0] run function asset_manager:artifact/create/set_lore/equipment/description
