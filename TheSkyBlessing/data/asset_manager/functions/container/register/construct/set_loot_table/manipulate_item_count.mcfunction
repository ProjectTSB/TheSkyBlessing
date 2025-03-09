#> asset_manager:container/register/construct/set_loot_table/manipulate_item_count
#
#
#
# @within function
#   asset_manager:container/register/construct/set_loot_table/
#   asset_manager:container/register/construct/set_loot_table/manipulate_item_count

# とりあえずそのまま Items に追加する
    data modify storage asset:container Items append from storage asset:container MultiplayerMultipliableItems[-1]
# Count だけ修正する
    data modify storage asset:container Count set from storage asset:container Items[-1].Count
    function asset_manager:container/register/construct/common/calculate_count_for_multiplayer
    data modify storage asset:container Items[-1].Count set from storage asset:container Count
# まだ要素があるならループ
    data remove storage asset:container MultiplayerMultipliableItems[-1]
    execute if data storage asset:container MultiplayerMultipliableItems[0] run function asset_manager:container/register/construct/set_loot_table/manipulate_item_count
