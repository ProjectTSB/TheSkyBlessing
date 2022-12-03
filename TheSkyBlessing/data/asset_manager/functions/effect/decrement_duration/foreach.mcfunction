#> asset_manager:effect/decrement_duration/foreach
#
#
#
# @within function asset_manager:effect/decrement_duration/*

# データ処理
    data modify storage asset:effect DecrementedEffects append from storage asset:effect Effects[-1]
    execute store result storage asset:effect DecrementedEffects[-1].Duration int 1 run data get storage asset:effect DecrementedEffects[-1].Duration 0.9999999999
# 末尾削除
    data remove storage asset:effect Effects[-1]
# 要素があれば再帰
    execute if data storage asset:effect Effects[0] run function asset_manager:effect/decrement_duration/foreach