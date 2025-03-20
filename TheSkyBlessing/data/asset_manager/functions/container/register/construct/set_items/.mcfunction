#> asset_manager:container/register/construct/set_items/
#
#
#
# @within function
#   asset_manager:container/register/construct/
#   asset_manager:container/register/construct/set_items/

# データ処理
    data modify storage asset:container Item set from storage asset:container Items[-1].Item
    function asset_manager:container/register/construct/set_items/item_normalize/
    data modify storage asset:container Item.Slot set from storage asset:container Items[-1].Slot
    data modify storage asset:container NormalizedItems append from storage asset:container Item
# 末尾削除
    data remove storage asset:container Items[-1]
# 要素があれば再帰
    execute if data storage asset:container Items[0] run function asset_manager:container/register/construct/set_items/
