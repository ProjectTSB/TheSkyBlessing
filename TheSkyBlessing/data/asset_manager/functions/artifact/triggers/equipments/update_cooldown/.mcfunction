#> asset_manager:artifact/triggers/equipments/update_cooldown/
#
#
#
# @within function asset_manager:artifact/triggers/

# UserStorage取得
    function oh_my_dat:please
# セッション開く
    function lib:array/session/open
# 配列をコピー
# mainhandは二重更新しないように削除する
    data modify storage asset:artifact New.CopiedItemData set from storage asset:artifact New.ItemData
    data remove storage asset:artifact New.CopiedItemData[0]
# それぞれについて更新 // New.CopiedItemData (normal) -> LocalCooldown (inverted)
    function asset_manager:artifact/triggers/equipments/update_cooldown/foreach
# 反転する // LocalCooldown (inverted) -> Array (normal)
    data modify storage lib: Array set from storage asset:artifact LocalCooldown
    function lib:array/reverse
# 設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown set from storage lib: Array
# リセット
    function lib:array/session/close
    data remove storage asset:artifact New.CopiedItemData
    data remove storage asset:artifact LocalCooldown
    scoreboard players reset $Tick Temporary
