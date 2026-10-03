#> asset_manager:effect/context/refresh.m
#
# API の更新結果を Current と context へ反映する。
#
# @input args
#   ID : int
# @within function asset_manager:effect/context/after_api

# 同じ ID の Effect を Current.Data に取得する
# 再付与後のデータも取得するため、Revision は照合しない。
    data remove storage asset:effect Current.Data
    $data modify storage asset:effect Current.Data set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID)}]
    execute unless data storage asset:effect Current.Data run return 0

# 更新番号・残り時間・削除予約を反映する
    data modify storage asset:effect Current.Revision set from storage asset:effect Current.Data.Revision
    execute if data storage asset:effect Current.Data{Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true
    data modify storage asset:context Duration set from storage asset:effect Current.Data.Duration
    execute if data storage asset:effect Current{RemoveRequested:true} run data modify storage asset:context Duration set value -1

# Stack と Field を反映する
# 実行中の re-given に渡した PreviousField は保持する。
    data modify storage asset:context Stack set from storage asset:effect Current.Data.Stack
    data modify storage asset:context this set value {}
    data modify storage asset:context this set from storage asset:effect Current.Data.Field
