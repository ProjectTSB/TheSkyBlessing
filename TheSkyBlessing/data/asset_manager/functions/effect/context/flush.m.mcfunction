#> asset_manager:effect/context/flush.m
#
# asset:context の作業データを、同じ ID / Revision の Effect データへ書き戻す。
# API 前と given / re-given / tick から戻った後に使う。NextEvent や更新番号は上書きしない。
#
# 呼出元で OhMyDat の参照先を現在の付与先へ合わせる。Current と asset:context は同じ Effect を指す。
#
# @input args
#   ID : int
#   Revision : int
# @within function
#   asset_manager:effect/context/before_api
#   asset_manager:effect/process.m

# 保存先に ID / Revision が一致する Effect データがあることを確認する
# 削除済みのデータを作り直したり、更新番号が異なるデータへ古い context を書き戻したりしない。
    $execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}] run return 0

# 一度設定された削除予約を保持する
# 保存データ・context のいずれかが Duration=-1 なら、削除予約を Current に記録する。
# 後続の context.Duration の書き換えより削除予約を優先する。
    $execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision),Duration:-1}] run data modify storage asset:effect Current.RemoveRequested set value true
    execute if data storage asset:context {Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true
    execute if data storage asset:effect Current{RemoveRequested:true} run data modify storage asset:context Duration set value -1

# イベントが編集する Duration・Stack・Field だけを保存する
# Field は丸ごと set する。merge では context で削除したキーが保存データに残ってしまう。
# NextEvent / PreviousField / Revision は give と process.m で管理する。
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}].Duration set from storage asset:context Duration
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}].Stack set from storage asset:context Stack
    $data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}].Field set from storage asset:context this
