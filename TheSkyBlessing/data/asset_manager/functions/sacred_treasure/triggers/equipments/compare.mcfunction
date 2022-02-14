#> asset_manager:sacred_treasure/triggers/equipments/compare
#
# 各slotについて前のアイテムデータと一致していない場合、タグを付与します。
#
# @within function asset_manager:sacred_treasure/triggers/

#> private use
# @private
    #declare score_holder $Temp

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/new/set_to_current
# セッション開く
    function lib:array/session/open
# データ設定
    execute if data storage asset:context New.Items.mainhand.tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.mainhand.tag.TSB.UUID
    execute unless data storage asset:context New.Items.mainhand.tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.offhand.tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.offhand.tag.TSB.UUID
    execute unless data storage asset:context New.Items.offhand.tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.feet.tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.feet.tag.TSB.UUID
    execute unless data storage asset:context New.Items.feet.tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.legs.tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.legs.tag.TSB.UUID
    execute unless data storage asset:context New.Items.legs.tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.chest.tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.chest.tag.TSB.UUID
    execute unless data storage asset:context New.Items.chest.tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.head.tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.head.tag.TSB.UUID
    execute unless data storage asset:context New.Items.head.tag.TSB.UUID run data modify storage lib: Array append value -2

    execute if data storage asset:context New.Items.hotbar[0].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[0].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[0].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[1].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[1].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[1].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[2].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[2].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[2].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[3].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[3].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[3].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[4].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[4].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[4].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[5].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[5].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[5].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[6].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[6].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[6].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[7].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[7].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[7].tag.TSB.UUID run data modify storage lib: Array append value -2
    execute if data storage asset:context New.Items.hotbar[8].tag.TSB.UUID run data modify storage lib: Array append from storage asset:context New.Items.hotbar[8].tag.TSB.UUID
    execute unless data storage asset:context New.Items.hotbar[8].tag.TSB.UUID run data modify storage lib: Array append value -2


    execute if data storage asset:context Old.Items.mainhand.tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.mainhand.tag.TSB.UUID
    execute unless data storage asset:context Old.Items.mainhand.tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.offhand.tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.offhand.tag.TSB.UUID
    execute unless data storage asset:context Old.Items.offhand.tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.feet.tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.feet.tag.TSB.UUID
    execute unless data storage asset:context Old.Items.feet.tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.legs.tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.legs.tag.TSB.UUID
    execute unless data storage asset:context Old.Items.legs.tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.chest.tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.chest.tag.TSB.UUID
    execute unless data storage asset:context Old.Items.chest.tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.head.tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.head.tag.TSB.UUID
    execute unless data storage asset:context Old.Items.head.tag.TSB.UUID run data modify storage lib: Array2 append value -2

    execute if data storage asset:context Old.Items.hotbar[0].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[0].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[0].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[1].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[1].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[1].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[2].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[2].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[2].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[3].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[3].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[3].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[4].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[4].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[4].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[5].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[5].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[5].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[6].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[6].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[6].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[7].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[7].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[7].tag.TSB.UUID run data modify storage lib: Array2 append value -2
    execute if data storage asset:context Old.Items.hotbar[8].tag.TSB.UUID run data modify storage lib: Array2 append from storage asset:context Old.Items.hotbar[8].tag.TSB.UUID
    execute unless data storage asset:context Old.Items.hotbar[8].tag.TSB.UUID run data modify storage lib: Array2 append value -2
# 比較
    function lib:array/compare
# 比較結果を保存する
    data modify storage lib: Array set from storage lib: CompareResult
    function lib:array/reverse
    data modify storage asset:sacred_treasure EquipmentChanges set from storage lib: Array
# リセット
    function lib:array/session/close
    scoreboard players reset $Temp Temporary