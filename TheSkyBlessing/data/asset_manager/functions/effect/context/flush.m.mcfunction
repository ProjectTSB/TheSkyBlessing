#> asset_manager:effect/context/flush.m
#
# context の変更を同じ ID / Revision の Effect へ保存する。
#
# OhMyDat は付与先を指し、Current と context は同じ Effect を指すこと。
#
# @input args
#   ID : int
#   Revision : int
# @within function
#   asset_manager:effect/context/before_api
#   asset_manager:effect/process.m

# 削除・再付与済みのデータへ書き戻さない
    $execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}] run data remove storage asset:effect Current.Data
    execute unless data storage asset:effect Current.Data run return 0

# 削除予約を後続の Duration 変更より優先する
    execute if data storage asset:context {Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true
    execute if data storage asset:effect Current{RemoveRequested:true} run data modify storage asset:context Duration set value -1

# context の変更を一括保存する
# Field は set で置き換え、削除したキーを残さない。
    data modify storage asset:effect Current.Data.Duration set from storage asset:context Duration
    data modify storage asset:effect Current.Data.Stack set from storage asset:context Stack
    data modify storage asset:effect Current.Data.Field set from storage asset:context this
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}] set from storage asset:effect Current.Data
