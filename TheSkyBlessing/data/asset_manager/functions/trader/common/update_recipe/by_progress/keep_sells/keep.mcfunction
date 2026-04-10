#> asset_manager:trader/common/update_recipe/by_progress/keep_sells/keep
#
# 更新前の商品と取引数を維持する
#
# storage
# @input
#   asset:trader TempA: 更新前の取引データ配列
#   asset:trader TempB: 更新後の取引データ配列
# @output
#   asset:trader TempC: 更新前の商品とmaxUsesだけ維持した取引データ配列
#
# @within function
#   asset_manager:trader/common/update_recipe/by_progress/keep_sells/
#   asset_manager:trader/common/update_recipe/by_progress/keep_sells/keep

# 最後尾のsellとmaxUsesだけ移す
    data modify storage asset:trader TempB[-1].sell set from storage asset:trader TempA[-1].sell
    data modify storage asset:trader TempB[-1].maxUses set from storage asset:trader TempA[-1].maxUses

# TempCにす
    data modify storage asset:trader TempC[-1] set from storage asset:trader TempB[-1]

# 最後尾の要素を削除
    data remove storage asset:trader TempA[-1]
    data remove storage asset:trader TempB[-1]

# 要素がまだあれば再帰
    execute if data storage asset:trader TempA[0] run function asset_manager:trader/common/update_recipe/by_progress/keep_sells/keep
