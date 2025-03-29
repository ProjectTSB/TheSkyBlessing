#> asset_manager:artifact/triggers/equipments/update_attribute/filter/
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/*

# セッションを開く
    function lib:array/session/open
# 現tickの装備データの取得
    # 現tickの神器を抽出
    # asset:context New.Items -> asset:artifact Temp.1
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.mainhand.tag.TSB
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.offhand.tag.TSB
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.feet.tag.TSB
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.legs.tag.TSB
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.chest.tag.TSB
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.head.tag.TSB
        data modify storage asset:artifact Temp.1 append from storage asset:context New.Items.hotbar[].tag.TSB
    # 信仰条件を満たさない神器を弾く
    # asset:artifact Temp.1 -> asset:artifact Temp.3 (inverted)
        function asset_manager:artifact/triggers/equipments/update_attribute/filter/check_religion
        data remove storage asset:artifact Temp.1
    # 正しいスロットに装着していない神器を弾く
    # asset:artifact Temp.3 (inverted) -> lib:Array -> asset:context New.EquipData
        scoreboard players set $SlotIndex Temporary 0
        function asset_manager:artifact/triggers/equipments/update_attribute/filter/check_slot
        data modify storage asset:context New.EquipData set from storage lib: Array
        data modify storage lib: Array set value []
        data remove storage asset:artifact Temp.3
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
            # data modify storage lib: MaskElement set value {ID:-2,UUID:-2,LocalCooldown:0}
            function lib:array/mask
            data modify storage asset:artifact Temp.New set from storage lib: Array
        # 神器でない要素をマスクする
            # data modify storage lib: Array set from storage asset:artifact Temp.New
            data modify storage lib: CompareTarget set value {ID:-2,UUID:-2,LocalCooldown:0}
            function lib:array/compare_single
            data modify storage lib: Array set from storage asset:artifact Temp.New
            data modify storage lib: Masks set from storage lib: CompareResult
            function lib:array/mask
            data modify storage asset:artifact Temp.New set from storage lib: Array
        # 前tick
        # 変更のない部位をマスクする
            data modify storage lib: Array set from storage asset:context Old.EquipData
            data modify storage lib: Masks set from storage asset:artifact Temp.Compare
            # data modify storage lib: MaskElement set value {ID:-2,UUID:-2,LocalCooldown:0}
            function lib:array/mask
            data modify storage asset:artifact Temp.Old set from storage lib: Array
        # 神器でない要素をマスクする
            # data modify storage lib: Array set from storage asset:artifact Temp.Old
            data modify storage lib: CompareTarget set value {ID:-2,UUID:-2,LocalCooldown:0}
            function lib:array/compare_single
            data modify storage lib: Array set from storage asset:artifact Temp.Old
            data modify storage lib: Masks set from storage lib: CompareResult
            function lib:array/mask
            data modify storage asset:artifact Temp.Old set from storage lib: Array
# リセット
    function lib:array/session/close
    data remove storage asset:artifact Temp.Compare
