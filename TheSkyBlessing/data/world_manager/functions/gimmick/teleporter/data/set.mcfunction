#> world_manager:gimmick/teleporter/data/set
#
#
#
# @within function world_manager:gimmick/teleporter/dynamic_register/do

# セッション開ける
    function lib:array/session/open
# データ移動
    data modify storage lib: Array set from storage world_manager:gimmick TeleporterGroups
# 動かす // 動かす数は~/get側で設定されているはず
    function lib:array/move
# セット
    data modify storage lib: Array[-1].Teleporters set from storage world_manager:gimmick Teleporter
# 戻して戻す
    function lib:array/revert
    data modify storage world_manager:gimmick TeleporterGroups set from storage lib: Array
# リセット
    function lib:array/session/close