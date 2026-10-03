#> asset_manager:effect/context/refresh.m
#
# API による更新後の Effect データを読み、Current と asset:context の作業データへ反映する。
# 自己再付与後は新しい Revision を Current に反映し、以後の書き戻し先を再付与後のデータに合わせる。
#
# after_api が OhMyDat の参照先を現在の付与先へ合わせ、Phase=callback を確認して呼ぶ。
#
# @input args
#   ID : int
# @within function asset_manager:effect/context/after_api

# 同じ ID の最新の Effect データを取得する
# 再付与で更新されたデータを読み込むため、ここでは古い Revision を検索条件に含めない。
# TargetEffect は実行中のイベントの判定に使うため、読み直したデータは SyncedEffect に保存する。
    data remove storage asset:effect SyncedEffect
    $data modify storage asset:effect SyncedEffect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID)}]
    execute unless data storage asset:effect SyncedEffect run return 0

# API 操作後の更新番号と残り時間を読み込む
# API による削除予約を記録し、後の書き戻しで取り消されないようにする。
    data modify storage asset:effect Current.Revision set from storage asset:effect SyncedEffect.Revision
    execute if data storage asset:effect SyncedEffect{Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true
    data modify storage asset:context Duration set from storage asset:effect SyncedEffect.Duration
    execute if data storage asset:effect Current{RemoveRequested:true} run data modify storage asset:context Duration set value -1

# 更新後の Stack と Field をイベントへ渡す
# 現在のイベントの PreviousField は更新しない。
# 再付与で予約した次回の PreviousField は、保存データに残して次回の実行時に読み込む。
    data modify storage asset:context Stack set from storage asset:effect SyncedEffect.Stack
    data modify storage asset:context this set value {}
    data modify storage asset:context this set from storage asset:effect SyncedEffect.Field

# 読み取り専用の一時データを片付ける
    data remove storage asset:effect SyncedEffect
