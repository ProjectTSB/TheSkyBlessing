#> asset_manager:artifact/triggers/equipments/set_and_modifier/filter/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/*

# セッションを開く
    function lib:array/session/open
# 現tickの装備データの取得
    # 現tickの神器を抽出
    # asset:context New.Items -> asset:artifact Temp.Items
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.mainhand.tag.TSB
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.offhand.tag.TSB
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.feet.tag.TSB
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.legs.tag.TSB
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.chest.tag.TSB
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.head.tag.TSB
        data modify storage asset:artifact Temp.Items append from storage asset:context New.Items.hotbar[].tag.TSB
    # 信仰条件を満たさない神器を弾く
    # asset:artifact Temp.Items -> asset:artifact Temp.BelieveFilteredItems (inverted)
        function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_religion
        data remove storage asset:artifact Temp.Items
    # 正しいスロットに装着していない神器を弾く
    # asset:artifact Temp.BelieveFilteredItems (inverted) -> lib:Array -> asset:context New.EquipData
        data modify storage asset:artifact Temp.Slot set value ["hotbar","hotbar","hotbar","hotbar","hotbar","hotbar","hotbar","hotbar","hotbar","head","chest","legs","feet","offhand","mainhand"]
        function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_slot
        data modify storage asset:context New.EquipData set from storage lib: Array
        data modify storage lib: Array set value []
        data remove storage asset:artifact Temp.BelieveFilteredItems
# 装備変更の取得
    # 現tickと前tickの比較
        data modify storage lib: ArrayA set from storage asset:context New.EquipData
        data modify storage lib: ArrayB set from storage asset:context Old.EquipData
        function lib:array/compare
        data modify storage asset:artifact Temp.Compare set from storage lib: CompareResult
    # 変更のある部位の内、神器を装備しているものの絞り込み
        # 現tick
        # 変更のない部位をマスクする
            data modify storage lib: Array set from storage asset:context New.EquipData
            data modify storage lib: Masks set from storage asset:artifact Temp.Compare
            # data modify storage lib: MaskElement set value {ID:-2}
            function lib:array/mask
        # 神器でない要素をマスクする
            data remove storage lib: Array[{ID:-2}]
            data modify storage asset:artifact Temp.CurrentDifferentEquipments set from storage lib: Array
        # とりあえず装備データを抽出する
            data modify storage asset:artifact Temp.CurrentEquipments append from storage asset:context New.EquipData[]
        # 前tick
        # 変更のない部位をマスクする
            data modify storage lib: Array set from storage asset:context Old.EquipData
            data modify storage lib: Masks set from storage asset:artifact Temp.Compare
            # data modify storage lib: MaskElement set value {ID:-2}
            function lib:array/mask
        # 神器でない要素をマスクする
            data remove storage lib: Array[{ID:-2}]
            data modify storage asset:artifact Temp.PreviousDifferentEquipments set from storage lib: Array
# リセット
    function lib:array/session/close
    data remove storage asset:artifact Temp.Compare
