#> asset_manager:sacred_treasure/triggers/sneak/reset_when_change_item
#
# 各slotについて前のアイテムデータと一致していない場合、その値のスコアボードを1に設定します
#
# Q. なんで0やnullじゃなくて1なの？ A. このfunctionが実行されるのはSneak時なので0|null+1の値 = 1になる
#
# @within function asset_manager:sacred_treasure/triggers/sneak/

#> private use
# @private
    #declare score_holder $Temp

# 変更のあったスロットのデータをリセットする
    execute if data storage asset:sacred_treasure EquipmentChanges[00]._{_:false} run scoreboard players set @s Sneak.Mainhand 1
    execute if data storage asset:sacred_treasure EquipmentChanges[01]._{_:false} run scoreboard players set @s Sneak.Offhand 1
    execute if data storage asset:sacred_treasure EquipmentChanges[02]._{_:false} run scoreboard players set @s Sneak.Head 1
    execute if data storage asset:sacred_treasure EquipmentChanges[03]._{_:false} run scoreboard players set @s Sneak.Chest 1
    execute if data storage asset:sacred_treasure EquipmentChanges[04]._{_:false} run scoreboard players set @s Sneak.Legs 1
    execute if data storage asset:sacred_treasure EquipmentChanges[05]._{_:false} run scoreboard players set @s Sneak.Feet 1
    execute if data storage asset:sacred_treasure EquipmentChanges[06]._{_:false} run scoreboard players set @s Sneak.Hotbar0 1
    execute if data storage asset:sacred_treasure EquipmentChanges[07]._{_:false} run scoreboard players set @s Sneak.Hotbar1 1
    execute if data storage asset:sacred_treasure EquipmentChanges[08]._{_:false} run scoreboard players set @s Sneak.Hotbar2 1
    execute if data storage asset:sacred_treasure EquipmentChanges[09]._{_:false} run scoreboard players set @s Sneak.Hotbar3 1
    execute if data storage asset:sacred_treasure EquipmentChanges[10]._{_:false} run scoreboard players set @s Sneak.Hotbar4 1
    execute if data storage asset:sacred_treasure EquipmentChanges[11]._{_:false} run scoreboard players set @s Sneak.Hotbar5 1
    execute if data storage asset:sacred_treasure EquipmentChanges[12]._{_:false} run scoreboard players set @s Sneak.Hotbar6 1
    execute if data storage asset:sacred_treasure EquipmentChanges[13]._{_:false} run scoreboard players set @s Sneak.Hotbar7 1
    execute if data storage asset:sacred_treasure EquipmentChanges[14]._{_:false} run scoreboard players set @s Sneak.Hotbar8 1