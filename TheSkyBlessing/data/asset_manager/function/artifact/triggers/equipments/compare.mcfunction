#> asset_manager:artifact/triggers/equipments/compare
#
# 各slotについて前のアイテムデータと一致していない場合、タグを付与します。
#
# @within function asset_manager:artifact/triggers/

#> private use
# @private
    #declare score_holder $Temp

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# セッション開く
    function lib:array/session/open
# データ設定
    data modify storage lib: ArrayA append from storage asset:context New.Items.mainhand.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayA append from storage asset:context New.Items.offhand.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayA append from storage asset:context New.Items.feet.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayA append from storage asset:context New.Items.legs.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayA append from storage asset:context New.Items.chest.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayA append from storage asset:context New.Items.head.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayA append from storage asset:context New.Items.hotbar[].components."minecraft:custom_data".TSB.UUID

    data modify storage lib: ArrayB append from storage asset:context Old.Items.mainhand.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayB append from storage asset:context Old.Items.offhand.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayB append from storage asset:context Old.Items.feet.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayB append from storage asset:context Old.Items.legs.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayB append from storage asset:context Old.Items.chest.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayB append from storage asset:context Old.Items.head.components."minecraft:custom_data".TSB.UUID
    data modify storage lib: ArrayB append from storage asset:context Old.Items.hotbar[].components."minecraft:custom_data".TSB.UUID
# 比較
    function lib:array/compare
# 比較結果を保存する
    data modify storage asset:artifact EquipmentChanges set from storage lib: CompareResult
# リセット
    function lib:array/session/close
    scoreboard players reset $Temp Temporary
