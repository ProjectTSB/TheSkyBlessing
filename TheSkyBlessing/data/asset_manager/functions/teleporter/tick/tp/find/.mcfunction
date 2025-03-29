#> asset_manager:teleporter/tick/tp/find/
#
# テレポート先の座標を記録しておく
#
# @within function asset_manager:teleporter/tick/active

# 一旦削除しておく
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.TargetPos
# 取得を試みる
    execute anchored eyes positioned ^ ^ ^1.4 summon marker run function asset_manager:teleporter/tick/tp/find/recursive
