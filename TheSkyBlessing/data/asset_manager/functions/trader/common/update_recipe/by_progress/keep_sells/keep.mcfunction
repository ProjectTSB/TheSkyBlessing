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

#> Private
# @private
    #declare score_holder $Uses
    #declare score_holder $MaxUses

# 最後尾のsellを移し、usesをMaxUsesに移す
    data modify storage asset:trader TempB[-1].Sell set from storage asset:trader TempA[-1].sell
    data modify storage asset:trader TempB[-1].MaxUses set from storage asset:trader TempA[-1].uses

# maxUses - UsesをTempBに移す
    execute store result score $Uses Temporary run data get storage asset:trader TempA[-1].uses
    execute store result score $MaxUses Temporary run data get storage asset:trader TempA[-1].maxUses
    execute store result storage asset:trader TempB[-1].MaxUses int 1 run scoreboard players operation $MaxUses Temporary -= $Uses Temporary

# 売ってるのが神器の場合はIDを入れておく
    execute if data storage asset:trader TempA[-1].sell.tag.TSB.ID run data modify storage asset:trader TempB[-1].Sell set from storage asset:trader TempA[-1].sell.tag.TSB.ID

# TempCに移す
    data modify storage asset:trader TempC append from storage asset:trader TempB[-1]

# 最後尾の要素を削除
    data remove storage asset:trader TempA[-1]
    data remove storage asset:trader TempB[-1]

# リセット
    scoreboard players reset $Uses Temporary
    scoreboard players reset $MaxUses Temporary

# 要素がまだあれば再帰
    execute if data storage asset:trader TempA[0] run function asset_manager:trader/common/update_recipe/by_progress/keep_sells/keep
