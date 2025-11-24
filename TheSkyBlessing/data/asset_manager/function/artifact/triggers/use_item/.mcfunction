#> asset_manager:artifact/triggers/use_item/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

#> consumable判定用アマスタ
# @private
#declare tag CheckConsumableStand

# 食べたスロットを特定する
    # 下ごしらえ
        data modify storage api: SelectedItemSlot set from storage asset:context Old.SelectedItemSlot
        data modify storage api: Inventory set from storage asset:context New.Inventory
        function api:inventory/refer_selected_item_slot/get_item
        execute unless data storage api: Item.components."minecraft:custom_data".TSB run data modify storage api: Item.components."minecraft:custom_data".TSB set value {ID:-2,LocalCooldown:0,UUID:-2}
    # アイテムの変更で特定を試みる
        function asset_manager:artifact/triggers/use_item/check_change
    # アイテムを入れ替えたかで特定を試みる
        execute unless data storage asset:artifact Argument.AutoSlot run function asset_manager:artifact/triggers/use_item/check_hand_swap
    # アイテムを投げたかで特定を試みる
        execute unless data storage asset:artifact Argument.AutoSlot run function asset_manager:artifact/triggers/use_item/check_item_drop
    # アイテムが食べれるかで特定を試みる
        execute unless data storage asset:artifact Argument.AutoSlot run summon armor_stand 0.0 0.0 0.0 {Marker:1b,Invisible:1b,Tags:["CheckConsumableStand"]}
        execute unless data storage asset:artifact Argument.AutoSlot as @e[type=armor_stand,tag=CheckConsumableStand,distance=..0.001,x=0.0,y=0.0,z=0.0,limit=1] run function asset_manager:artifact/triggers/use_item/check_has_consumable
# イベント発火前に実行するやつ
    function asset_manager:artifact/data/old/set_to_current
# 神器側に受け渡し
    function #asset:artifact/use_item
