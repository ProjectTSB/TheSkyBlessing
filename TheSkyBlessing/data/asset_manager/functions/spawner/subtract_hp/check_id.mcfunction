#> asset_manager:spawner/subtract_hp/check_id
#
# 対象スポナーの召喚するMobのIDをリストを取得して再帰処理に渡す
#
# @within function asset_manager:spawner/subtract_hp/check_already_find

# EntityStorage呼び出し
    function oh_my_dat:please
# MobIDを移す
    data modify storage asset:spawner SpawnPotentials set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.SpawnPotentials
# すべてのIDについてチェックする
    function asset_manager:spawner/subtract_hp/check_id_foreach
# リセット
    data remove storage asset:spawner MobID