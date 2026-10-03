#> asset_manager:effect/context/flush.m
#
# asset:context の作業データを、同じ ID / Revision の Effect データへ書き戻す。
# API 前と given / re-given / tick から戻った後に使う。Current.Data 全体を一括で保存する。
#
# 呼出元で OhMyDat の参照先を現在の付与先へ合わせる。Current と asset:context は同じ Effect を指す。
# Current.Data は process.m が取得し、同じ付与先への give/remove 後に refresh.m が読み直す。
#
# @input args
#   ID : int
#   Revision : int
# @within function
#   asset_manager:effect/context/before_api
#   asset_manager:effect/process.m

# 保存先に ID / Revision が一致する Effect データがあることを確認する
# 削除済みのデータを作り直したり、更新番号が異なるデータへ古い context を書き戻したりしない。
    $execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}] run data remove storage asset:effect Current.Data
    execute unless data storage asset:effect Current.Data run return 0

# 一度設定された削除予約を保持する
# 取得時と API 後の削除予約は Current に記録済み。context の Duration=-1 も記録する。
# 後続の context.Duration の書き換えより削除予約を優先する。
    execute if data storage asset:context {Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true
    execute if data storage asset:effect Current{RemoveRequested:true} run data modify storage asset:context Duration set value -1

# Duration・Stack・Field を手元のデータへ反映し、Effect 全体を一度に書き戻す
# Field は丸ごと set する。merge では context で削除したキーが保存データに残ってしまう。
# NextEvent / PreviousField / Revision 等は、process.m または refresh.m で取得した値を使う。
    data modify storage asset:effect Current.Data.Duration set from storage asset:context Duration
    data modify storage asset:effect Current.Data.Stack set from storage asset:context Stack
    data modify storage asset:effect Current.Data.Field set from storage asset:context this
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}] set from storage asset:effect Current.Data
