#> asset_manager:sacred_treasure/core/use/remove_remain/
#
# 耐久値を減少させます
#
# @input
#   as player
#   storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasure/core/use/

# 対象スロットの残り使用回数取得
    execute store result score $Remain Temporary run data get storage asset:sacred_treasure Item.tag.TSB.RemainingCount
# 減算
    scoreboard players remove $Remain Temporary 1
# 破壊処理
    execute if score $Remain Temporary matches ..0 run function asset_manager:sacred_treasure/core/use/remove_remain/break_item
# アイテム更新処理
    execute store result storage asset:sacred_treasure Item.tag.TSB.RemainingCount int 1 run scoreboard players get $Remain Temporary