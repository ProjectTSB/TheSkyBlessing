#> asset_manager:teleporter/tick/tp/find/store_pos
#
#
#
# @within function asset_manager:teleporter/tick/tp/find/recursive

# テレポート先の座標を取得
    execute as @e[type=item_display,tag=TPStar.Active,distance=..0.07,limit=1] run function oh_my_dat:please
    data modify storage asset:teleporter TargetPos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos
# 値をプレイヤーストレージに代入
    execute as @a[tag=this,limit=1] run function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.TPTargetPos set from storage asset:teleporter TargetPos
# リセット
    data remove storage asset:teleporter TargetPos
