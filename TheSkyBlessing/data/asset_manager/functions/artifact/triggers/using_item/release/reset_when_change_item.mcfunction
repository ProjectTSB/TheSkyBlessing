#> asset_manager:artifact/triggers/using_item/release/reset_when_change_item
#
# アイテムを持ち替えるなどして前のアイテムデータと一致していない場合、そのスロットのアイテム使用時間値を0に設定します
#
# @within function asset_manager:artifact/triggers/using_item/release/

# 変更のあったスロットのデータをリセットする
    execute if data storage asset:artifact EquipmentChanges[00]._{_:false} run scoreboard players set @s UsingItem.Mainhand 0
    execute if data storage asset:artifact EquipmentChanges[01]._{_:false} run scoreboard players set @s UsingItem.Offhand 0
