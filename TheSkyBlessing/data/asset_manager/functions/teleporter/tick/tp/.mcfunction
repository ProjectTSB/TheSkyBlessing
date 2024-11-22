#> asset_manager:teleporter/tick/tp/
#
#
#
# @within function asset_manager:teleporter/tick/active

# 視点先の星を取得する(Y-0.4しているのはジャンプ後のため)
    execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.4 ~ run function asset_manager:teleporter/tick/tp/find_target_star
    execute unless data storage asset:teleporter TargetPos anchored eyes positioned ^ ^0.03 ^1 positioned ~ ~-0.4 ~ run function asset_manager:teleporter/tick/tp/find_target_star
    execute unless data storage asset:teleporter TargetPos anchored eyes positioned ^ ^-.03 ^1 positioned ~ ~-0.4 ~ run function asset_manager:teleporter/tick/tp/find_target_star
    execute unless data storage asset:teleporter TargetPos anchored eyes positioned ^0.03 ^ ^1 positioned ~ ~-0.4 ~ run function asset_manager:teleporter/tick/tp/find_target_star
    execute unless data storage asset:teleporter TargetPos anchored eyes positioned ^-.03 ^ ^1 positioned ~ ~-0.4 ~ run function asset_manager:teleporter/tick/tp/find_target_star
# 視点先に星が存在する場合はテレポート処理
    execute if data storage asset:teleporter TargetPos run function asset_manager:teleporter/tick/tp/move
# リセット
    data remove storage asset:teleporter TargetPos
