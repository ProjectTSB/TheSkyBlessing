#> asset_manager:artifact/triggers/trigger/foreach/
#
#
#
# @within function
#   asset_manager:artifact/triggers/trigger/
#   asset_manager:artifact/triggers/trigger/foreach/

# 要素を取得
    data modify storage asset:artifact TargetItem set from storage asset:artifact NormalizedItemData[-1]._[0]
    data modify storage asset:artifact TargetItemList set from storage asset:artifact NormalizedItemData[-1]._
# contextを設定
    data modify storage asset:context id set from storage asset:artifact TargetItem.ID
    data modify storage asset:context Slot set from storage asset:artifact TargetItem.TargetSlot

# アイテムを消費中であることを登録する
    execute if data storage asset:artifact TargetItem{Trigger:"use_item"} unless data storage asset:artifact New.Consumable.ID if entity @s[tag=TriggerFlag.UsingItem,tag=!ConsumingItem] run function asset_manager:artifact/triggers/event/use_item/init
    execute if data storage asset:artifact TargetItem{Trigger:"shot"} unless data storage asset:artifact New.Consumable.ID if entity @s[tag=TriggerFlag.UsingItem,tag=!ConsumingItem] run function asset_manager:artifact/triggers/event/use_item/init

# トリガーを持っていれば処理を実行する
# equipとuse_itemは別処理をしているので弾く
    execute unless data storage asset:artifact TargetItem{Trigger:"equip"} unless data storage asset:artifact TargetItem{Trigger:"use_item"} run function asset_manager:artifact/triggers/trigger/foreach/call.m with storage asset:artifact TargetItem

# リセット
    data remove storage asset:artifact TargetItem
    data remove storage asset:artifact TargetItemList
    data remove storage asset:artifact CopiedTriggers
    data remove storage asset:artifact NormalizedItemData[-1]
# 要素が残っているなら再帰
    execute if data storage asset:artifact NormalizedItemData[0] run function asset_manager:artifact/triggers/trigger/foreach/
