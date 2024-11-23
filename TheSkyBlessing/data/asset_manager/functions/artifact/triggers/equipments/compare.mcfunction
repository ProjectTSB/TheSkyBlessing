#> asset_manager:artifact/triggers/equipments/compare
#
# 各slotについて前のアイテムデータと一致していない場合、タグを付与します。
#
# @within function asset_manager:artifact/triggers/

# セッション開く
    function lib:array/session/open
# データ設定
    data modify storage lib: ArrayA append from storage asset:artifact New.ItemData[].UUID
    data modify storage lib: ArrayB append from storage asset:artifact Old.ItemData[].UUID
# 比較
    function lib:array/compare
# 比較結果を保存する
    data modify storage asset:artifact EquipmentChanges set from storage lib: CompareResult
# リセット
    function lib:array/session/close
