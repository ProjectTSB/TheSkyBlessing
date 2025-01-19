#> asset_manager:artifact/data/new/fetch_data/
#
# プレイヤーデータからromを呼び出す
#
# @within function asset_manager:artifact/triggers/

# セッションを開く
    function lib:array/session/open
# データを用意する
    data modify storage asset:artifact New.ItemData set value []
# idを取得する
    data modify storage lib: Array append from storage asset:artifact New.Items.mainhand.tag.TSB
    data modify storage lib: Array append from storage asset:artifact New.Items.offhand.tag.TSB
    data modify storage lib: Array append from storage asset:artifact New.Items.feet.tag.TSB
    data modify storage lib: Array append from storage asset:artifact New.Items.legs.tag.TSB
    data modify storage lib: Array append from storage asset:artifact New.Items.chest.tag.TSB
    data modify storage lib: Array append from storage asset:artifact New.Items.head.tag.TSB
    data modify storage lib: Array append from storage asset:artifact New.Items.hotbar[].tag.TSB
# 反転
    function lib:array/reverse
# id毎にデータを取得する
    scoreboard players set $SlotIndex Temporary 0
    function asset_manager:artifact/data/new/fetch_data/foreach
# リセット
    scoreboard players reset $SlotIndex Temporary
    function lib:array/session/close
    data remove storage asset:artifact TargetSlot
