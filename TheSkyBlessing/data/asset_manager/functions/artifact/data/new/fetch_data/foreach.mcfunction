#> asset_manager:artifact/data/new/fetch_data/foreach
#
#
#
# @within function asset_manager:artifact/data/new/fetch_data/*

#> private
# @private
    #declare score_holder $ID
    #declare score_holder $InvalidSlot

# キーチェック
    execute store result score $ID Temporary run data get storage lib: Array[-1].ID
# スロットチェック
    # チェックしているslotを取得する
        execute store result storage asset:artifact Enum.Index int 1 run scoreboard players add $SlotIndex Temporary 1
        function asset:artifact/enum/index/.m with storage asset:artifact Enum
    # 神器のスロットのデータを保管する
    # これはauto処理のため
        data modify storage lib: Array[-1].TargetSlot set from storage lib: Array[-1].Slot

        data modify storage asset:artifact CopiedSlot set from storage lib: Array[-1].Slot
        execute if data storage asset:artifact {CopiedSlot:"auto"} if data storage asset:artifact Enum{Slot:"mainhand"} run data modify storage lib: Array[-1].TargetSlot set from storage asset:artifact Enum.Slot
        execute if data storage asset:artifact {CopiedSlot:"auto"} if data storage asset:artifact Enum{Slot: "offhand"} run data modify storage lib: Array[-1].TargetSlot set from storage asset:artifact Enum.Slot
        data remove storage asset:artifact CopiedSlot
    # Slotが一致しているか確認する
        execute store success score $InvalidSlot Temporary run data modify storage lib: Array[-1].TargetSlot set from storage asset:artifact Enum.Slot
# データが正しそうなら引っ張り出す
    data modify storage asset:artifact New.ItemData append value {}
    execute if score $ID Temporary matches 1.. unless score $InvalidSlot Temporary matches 1.. run data modify storage asset:artifact New.ItemData[-1] set from storage lib: Array[-1]
# データが正しくなさそうならさようなら
    execute if score $ID Temporary matches ..0 run data modify storage asset:artifact New.ItemData[-1] set value {ID:-2,UUID:-2,LocalCooldown:0}
    execute unless data storage asset:artifact New.ItemData[-1].ID run data modify storage asset:artifact New.ItemData[-1] set value {ID:-2,UUID:-2,LocalCooldown:0}
# 要素を削除し、残っていたら再帰する
    scoreboard players reset $ID Temporary
    scoreboard players reset $InvalidSlot Temporary
    data remove storage lib: Array[-1]
    execute if data storage lib: Array[0] run function asset_manager:artifact/data/new/fetch_data/foreach
