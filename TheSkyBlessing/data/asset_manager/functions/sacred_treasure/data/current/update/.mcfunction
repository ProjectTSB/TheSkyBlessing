#> asset_manager:sacred_treasure/data/current/update/
#
# Itemを元にcurrentデータを更新する
#
# @input storage asset:sacred_treasure ProcessedItem : SlottedItem
# @within function
#   asset_manager:sacred_treasure/use/item/update
#   asset_manager:sacred_treasure/use/item/break

# 存在するときの処理
    execute if data storage asset:sacred_treasure ProcessedItem run function asset_manager:sacred_treasure/data/current/update/when_modified/non-hotbar
# 削除されたときの処理
    execute unless data storage asset:sacred_treasure ProcessedItem run function asset_manager:sacred_treasure/data/current/update/when_removed