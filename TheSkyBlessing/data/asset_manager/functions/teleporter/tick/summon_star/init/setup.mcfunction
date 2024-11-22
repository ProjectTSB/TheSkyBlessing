#> asset_manager:teleporter/tick/summon_star/init/setup
#
#
#
# @within function asset_manager:teleporter/tick/summon_star/init/

# EntityStorage 呼び出し
    function oh_my_dat:please
# セッション開く
    function lib:array/session/open
# シャッフルして EntityStorage にいれる
    data modify storage lib: Array set from storage asset:teleporter FilteredTeleporters
    function lib:array/shuffle
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters set from storage lib: Array
# セッション閉じる
    function lib:array/session/close

# タグ付与
    tag @s add TeleporterInitializing
