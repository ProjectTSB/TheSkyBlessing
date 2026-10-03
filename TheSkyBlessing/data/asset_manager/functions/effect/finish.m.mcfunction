#> asset_manager:effect/finish.m
#
# Effect を削除し、remove / end の一方を実行する
#
# @input args
#   ID : int
#   Revision : int
# @within function asset_manager:effect/process.m

# 保存対象がなければ終了する
    execute unless data storage asset:effect Current.Data run return 0

# 再付与イベントを実行するまで終了を保留する
    execute if data storage asset:effect Current.Data.NextEvent run return 0

# remove / end のどちらを呼ぶか選択する
# 削除予約を自然終了より優先する
    execute if data storage asset:effect Current.Data{Duration:-1} run data modify storage asset:effect Current.EndEvent set value "remove"
    execute unless data storage asset:effect Current.EndEvent if data storage asset:effect Current.Data{Duration:0} run data modify storage asset:effect Current.EndEvent set value "end"
    execute unless data storage asset:effect Current.EndEvent if data storage asset:effect Current.Data{Stack:0} run data modify storage asset:effect Current.EndEvent set value "end"
    execute unless data storage asset:effect Current.EndEvent run return 0

# 終了処理へ移り、保存先の Effect を削除する
# 終了イベント内の同 ID への give を新規付与として扱うため、先に削除する
    data modify storage asset:effect Current.Phase set value "ending"
    $data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}]

# 終了イベントを実行する
    execute if data storage asset:effect Current{EndEvent:"remove"} run function asset_manager:effect/events/remove/
    execute if data storage asset:effect Current{EndEvent:"end"} run function asset_manager:effect/events/end/
