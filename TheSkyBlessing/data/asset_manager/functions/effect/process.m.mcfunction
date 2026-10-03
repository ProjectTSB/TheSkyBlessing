#> asset_manager:effect/process.m
#
# 処理対象の Effect を更新し、イベントを実行する。
#
# @input args
#   ID : int
#   Revision : int
# @within function asset_manager:effect/foreach

# 処理対象を取得する
# 途中で再付与された Effect は Revision が異なるため、次回に回す。
    data remove storage asset:effect TargetEffect
    $data modify storage asset:effect TargetEffect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}]
    execute unless data storage asset:effect TargetEffect run return 0

# 牛乳・死亡による削除予約
    execute if score @s UsedMilk matches 1.. store result score $RequireClearLv Temporary run data get storage asset:effect TargetEffect.RequireClearLv
    execute if score @s UsedMilk matches 1.. if score $RequireClearLv Temporary matches ..1 run data modify storage asset:effect TargetEffect.Duration set value -1
    execute if data storage asset:effect TargetEffect{ProcessOnDied:"remove"} if entity @s[tag=DeathProcess] run data modify storage asset:effect TargetEffect.Duration set value -1

# 継続中の Effect の残り時間を減らす
    execute unless data storage asset:effect TargetEffect{NextEvent:"given"} unless data storage asset:effect TargetEffect{NextEvent:"re-given"} unless data storage asset:effect TargetEffect{Duration:-1} store result storage asset:effect TargetEffect.Duration int 1 run data get storage asset:effect TargetEffect.Duration 0.9999999999

# 今回呼ぶイベントを確定する
    execute unless data storage asset:effect TargetEffect.NextEvent unless data storage asset:effect TargetEffect{Duration:-1} if entity @s[tag=!DeathProcess,tag=!InRespawnEvent] run data modify storage asset:effect TargetEffect.NextEvent set value "tick"
    execute unless data storage asset:effect TargetEffect.NextEvent unless data storage asset:effect TargetEffect{Duration:-1} if data storage asset:effect TargetEffect{ProcessOnDied:"keep"} run data modify storage asset:effect TargetEffect.NextEvent set value "tick"

# イベントの context を設定する
    data modify storage asset:context id set from storage asset:effect Current.ID
    data modify storage asset:context originID set from storage asset:effect Current.ID
    data modify storage asset:context Duration set from storage asset:effect TargetEffect.Duration
    data modify storage asset:context Stack set from storage asset:effect TargetEffect.Stack
    data modify storage asset:context this set value {}
    data modify storage asset:context this set from storage asset:effect TargetEffect.Field
    data modify storage asset:context PreviousField set from storage asset:effect TargetEffect.PreviousField
    data modify storage asset:effect Current.Phase set value "callback"

# イベント中の Duration 変更で取り消されないよう、削除予約を保持する
    execute if data storage asset:effect TargetEffect{Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true

# 書き戻すデータから今回の付与イベントを除く
    data modify storage asset:effect Current.Data set from storage asset:effect TargetEffect
    data remove storage asset:effect Current.Data.NextEvent
    data remove storage asset:effect Current.Data.PreviousField

# 確定したイベントを実行する
# 削除予約がある場合も、付与時の初期化・差分処理を先に済ませる。
    execute if data storage asset:effect TargetEffect{NextEvent:"given"} run function asset_manager:effect/events/given/
    execute if data storage asset:effect TargetEffect{NextEvent:"re-given"} run function asset_manager:effect/events/re-given/
    execute if data storage asset:effect TargetEffect{NextEvent:"tick"} run function asset_manager:effect/events/tick/

# イベントの変更を保存する
    function oh_my_dat:please
    function asset_manager:effect/context/flush.m with storage asset:effect Current

# 終了判定
    execute if data storage asset:context {Duration:-1} run data modify storage asset:effect Current.ShouldFinish set value true
    execute if data storage asset:context {Duration:0} run data modify storage asset:effect Current.ShouldFinish set value true
    execute if data storage asset:context {Stack:0} run data modify storage asset:effect Current.ShouldFinish set value true
    execute if data storage asset:effect Current{ShouldFinish:true} run function asset_manager:effect/finish.m with storage asset:effect Current
