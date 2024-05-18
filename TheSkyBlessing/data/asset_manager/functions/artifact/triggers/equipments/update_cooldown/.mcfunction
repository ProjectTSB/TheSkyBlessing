#> asset_manager:artifact/triggers/equipments/update_cooldown/
#
#
#
# @within function asset_manager:artifact/triggers/

# UserStorage取得
    function oh_my_dat:please
# セッション開く
    function lib:array/session/open
# 配列として取得
    data modify storage asset:artifact CopiedItemData set from storage asset:artifact ItemData
    data remove storage asset:artifact CopiedItemData[0]
# それぞれについて更新
    function asset_manager:artifact/triggers/equipments/update_cooldown/foreach
# 反転
    function lib:array/reverse
# 設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown set from storage lib: Array
# リセット
    function lib:array/session/close
    data remove storage asset:artifact CopiedItemData
    scoreboard players reset $Tick Temporary
    scoreboard players reset $LatestUsedTick Temporary
