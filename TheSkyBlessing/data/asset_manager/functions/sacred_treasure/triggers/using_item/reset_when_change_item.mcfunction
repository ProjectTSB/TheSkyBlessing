#> asset_manager:sacred_treasure/triggers/using_item/reset_when_change_item
#
# 各slotについて前のアイテムデータと一致していない場合、その値のスコアボードを1に設定します
#
# Q. なんで0やnullじゃなくて1なの？ A. このfunctionが実行されるのはアイテム使用中の時なので0|null+1の値 = 1になる
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

# 変更のあったスロットのデータをリセットする
    execute if data storage asset:sacred_treasure EquipmentChanges[00]._{_:false} run scoreboard players set @s Sneak.Mainhand 1
    execute if data storage asset:sacred_treasure EquipmentChanges[01]._{_:false} run scoreboard players set @s Sneak.Offhand 1