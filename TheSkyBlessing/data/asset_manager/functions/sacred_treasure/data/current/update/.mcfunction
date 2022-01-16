#> asset_manager:sacred_treasure/data/current/update/
#
# Itemを元にcurrentデータを更新する
#
# @within function
#   asset_manager:sacred_treasure/use/item/update
#   asset_manager:sacred_treasure/use/item/break

# 存在するときの処理
    execute if data storage asset:sacred_treasure Item run function asset_manager:sacred_treasure/data/current/update/when_modified
# 削除されたときの処理
    execute unless data storage asset:sacred_treasure Item run function asset_manager:sacred_treasure/data/current/update/when_removed