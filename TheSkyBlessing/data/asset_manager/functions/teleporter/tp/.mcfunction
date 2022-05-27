#> asset_manager:teleporter/tp/
#
#
#
# @within function asset_manager:teleporter/active

# 視点先の星を取得する(Y-0.4しているのはジャンプ後のため)
    execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.4 ~ run function asset_manager:teleporter/tp/find_target_star
# 視点先に星が存在する場合はテレポート処理
    execute if data storage asset:teleporter TargetPos as 0-0-0-0-0 run function asset_manager:teleporter/tp/move
# リセット
    data remove storage asset:teleporter TargetPos