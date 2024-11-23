#> asset_manager:artifact/triggers/trigger/normalize/
#
# 処理しやすい形に揃える
#
# @within function
#   asset_manager:artifact/triggers/trigger/
#   asset_manager:artifact/triggers/trigger/normalize/

#> private
# @private
    #declare score_holder $ID

# 要素を拾う
    data modify storage asset:artifact CopiedItem set from storage asset:artifact New.CopiedItemData[-1]
# アイテムの真のslotを拾う
    function asset_manager:artifact/triggers/trigger/normalize/slot_to_index
# IDが正規の数値なら更新する
    execute store result score $ID Temporary run data get storage asset:artifact CopiedItem.ID
    execute if score $ID Temporary matches 1.. run function asset_manager:artifact/triggers/trigger/normalize/upsert.m with storage asset:artifact CopiedItem

# リセット
    scoreboard players add $SlotIndex Temporary 1
    scoreboard players reset $ID
    data remove storage asset:artifact CopiedItem
    data remove storage asset:artifact New.CopiedItemData[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact New.CopiedItemData[0] run function asset_manager:artifact/triggers/trigger/normalize/
