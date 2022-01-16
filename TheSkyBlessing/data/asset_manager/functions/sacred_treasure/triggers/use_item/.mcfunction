#> asset_manager:sacred_treasure/triggers/use_item/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

#> consumable判定用アマスタ
# @private
#declare tag CheckConsumableStand

# 食べたスロットを特定する
    # 下ごしらえ
        data modify storage api: SelectedItemSlot set from storage asset:context Old.SelectedItemSlot
        data modify storage api: Inventory set from storage asset:context New.Inventory
        function api:inventory/refer_selected_item_slot/get_item
    # アイテムの変更で特定を試みる
        function asset_manager:sacred_treasure/triggers/use_item/check_change
    # アイテムを入れ替えたかで特定を試みる
        execute unless data storage asset:sacred_treasure Argument.AutoSlot run function asset_manager:sacred_treasure/triggers/use_item/check_hand_swap
    # アイテムを投げたかで特定を試みる
        execute unless data storage asset:sacred_treasure Argument.AutoSlot run function asset_manager:sacred_treasure/triggers/use_item/check_item_drop
    # アイテムが食べれるかで特定を試みる
        execute unless data storage asset:sacred_treasure Argument.AutoSlot run summon armor_stand 0.0 0.0 0.0 {Marker:1b,Invisible:1b,Tags:["CheckConsumableStand"]}
        execute unless data storage asset:sacred_treasure Argument.AutoSlot as @e[type=armor_stand,tag=CheckConsumableStand,distance=..0.001,x=0.0,y=0.0,z=0.0,limit=1] run function asset_manager:sacred_treasure/triggers/use_item/check_has_consumable
# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/old/set_to_current
# 神器側に受け渡し
    function #asset:sacred_treasure/use_item
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/old/revert_from_current