#> world_manager:gimmick/teleporter/tp/
#
#
#
# @within function world_manager:gimmick/teleporter/active

# 視点先の星を取得する(Y-0.4しているのはジャンプ後のため)
    execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.4 ~ run function world_manager:gimmick/teleporter/tp/find_target_star
# 視点先に星が存在する場合はテレポート処理
    execute if data storage world_manager:gimmick TargetPos as 0-0-0-0-0 run function world_manager:gimmick/teleporter/tp/move
# リセット
    data remove storage world_manager:gimmick TargetPos