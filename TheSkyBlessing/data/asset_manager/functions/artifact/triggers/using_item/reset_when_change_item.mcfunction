#> asset_manager:artifact/triggers/using_item/reset_when_change_item
#
# アイテムを持ち替えるなどして前のアイテムデータと一致していない場合、そのスロットのアイテム使用時間値を1に設定します
#
# Q. なんで0やnullじゃなくて1なの？ A. このfunctionが実行されるのはアイテム使用時なので0|null+1の値 = 1になる
#
# @within function asset_manager:artifact/triggers/using_item/

# 変更のあったスロットのデータをリセットする
    execute if data storage asset:artifact EquipmentChanges[00]._{_:false} run scoreboard players set @s UsingItem.Mainhand 1
    execute if data storage asset:artifact EquipmentChanges[01]._{_:false} run scoreboard players set @s UsingItem.Offhand 1
