#> asset_manager:effect/process.m
#
# 処理予定の一件について、イベントを実行して作業データを書き戻す。
# Current は処理対象の ID/Revision と、実行段階を表す Phase を保持する。
# TargetEffect は処理開始時に読み取った Effect データで、今回呼び出すイベントの判定に使う。
# イベントが編集する Duration・Stack・Field は asset:context に展開する。
#
# @s は現在の付与先で、OhMyDat もその保存先を参照する。Current は foreach が初期化・破棄する。
#
# @input args
#   ID : int
#   Revision : int
# @within function asset_manager:effect/foreach

# 処理予定の ID/Revision と一致する Effect データを取得する
# 処理の途中で再付与された Effect を処理順によらず次回に回すため、ID と Revision を照合する。
# たとえば A のイベントで未処理の B を再付与した場合、再付与前の B の処理予定はここでスキップする。
    data remove storage asset:effect TargetEffect
    $data modify storage asset:effect TargetEffect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}]
    execute unless data storage asset:effect TargetEffect run return 0

# 牛乳・死亡による削除予約を設定する
# Duration=-1 は削除予約を表す。イベントの実行可否と最後の終了判定に使う。
    execute if score @s UsedMilk matches 1.. store result score $RequireClearLv Temporary run data get storage asset:effect TargetEffect.RequireClearLv
    execute if score @s UsedMilk matches 1.. if score $RequireClearLv Temporary matches ..1 run data modify storage asset:effect TargetEffect.Duration set value -1
    execute if data storage asset:effect TargetEffect{ProcessOnDied:"remove"} if entity @s[tag=DeathProcess] run data modify storage asset:effect TargetEffect.Duration set value -1

# 通常の継続中の Effect だけ残り時間を一回分減らす
# given / re-given の実行時と削除予約の Effect では減らさない。
# 正の残り時間に 1 よりわずかに小さい倍率を掛け、整数化して一つ減らす。
    execute unless data storage asset:effect TargetEffect{NextEvent:"given"} unless data storage asset:effect TargetEffect{NextEvent:"re-given"} unless data storage asset:effect TargetEffect{Duration:-1} store result storage asset:effect TargetEffect.Duration int 1 run data get storage asset:effect TargetEffect.Duration 0.9999999999

# イベントの作業データを asset:context に読み込み、API 前後の同期を有効にする
# context.id は継承元のイベントを呼ぶ際に変わるため、保存対象の識別には Current.ID を使う。
# PreviousField は今回の re-given の入力で、再付与後の Field とは分けて保持する。
    data modify storage asset:context id set from storage asset:effect Current.ID
    data modify storage asset:context originID set from storage asset:effect Current.ID
    data modify storage asset:context Duration set from storage asset:effect TargetEffect.Duration
    data modify storage asset:context Stack set from storage asset:effect TargetEffect.Stack
    data modify storage asset:context this set value {}
    data modify storage asset:context this set from storage asset:effect TargetEffect.Field
    data modify storage asset:context PreviousField set from storage asset:effect TargetEffect.PreviousField
    data modify storage asset:effect Current.Phase set value "callback"

# イベント開始前からある削除予約を記録する
# イベントが context.Duration を更新しても、牛乳・死亡・API の削除予約は取り消さない。
    execute if data storage asset:effect TargetEffect{Duration:-1} run data modify storage asset:effect Current.RemoveRequested set value true

# 今回のイベントを呼び出す前に、保存データの NextEvent / PreviousField を消す
# 今回の NextEvent は TargetEffect に、PreviousField は context に保持済み。
# イベント終了後に消すと、途中の再付与が新しく予約した値まで消してしまう。
    $data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}].NextEvent
    $data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}].PreviousField

# given / re-given を通常の tick より先に呼び出す
# 削除予約がある場合も、付与時の初期化・差分処理を先に実行してから終了を判定する。
    execute if data storage asset:effect TargetEffect{NextEvent:"given"} run function asset_manager:effect/events/given/
    execute if data storage asset:effect TargetEffect{NextEvent:"re-given"} run function asset_manager:effect/events/re-given/

# 死亡処理中・リスポーン待ちは keep の Effect だけ tick を実行する
# 付与イベントの実行時と削除予約の Effect には通常 tick を重ねて呼ばない。
    execute unless data storage asset:effect TargetEffect{NextEvent:"given"} unless data storage asset:effect TargetEffect{NextEvent:"re-given"} unless data storage asset:effect TargetEffect{Duration:-1} unless entity @s[tag=!DeathProcess,tag=!InRespawnEvent] if data storage asset:effect TargetEffect{ProcessOnDied:"keep"} run function asset_manager:effect/events/tick/

# 通常時の tick を実行する
# 死亡処理中でもリスポーン待ちでもない場合に限るため、直前の分岐と重複しない。
    execute unless data storage asset:effect TargetEffect{NextEvent:"given"} unless data storage asset:effect TargetEffect{NextEvent:"re-given"} unless data storage asset:effect TargetEffect{Duration:-1} if entity @s[tag=!DeathProcess,tag=!InRespawnEvent] run function asset_manager:effect/events/tick/

# イベントで編集した作業データを書き戻す
# 別の付与先を操作すると OhMyDat の参照先が変わるため、取得し直す。
# 自己再付与では after_api が Current.Revision を更新するので、再付与後のデータへ書き戻す。
    function oh_my_dat:please
    function asset_manager:effect/context/flush.m with storage asset:effect Current

# 保存後の Duration / Stack を確認し、終了条件に当てはまるか判定する
# 終了条件がなければ finish.m による保存データの再検索を省く。
# finish.m は付与イベントの実行待ちなら終了を延期し、終了時に remove / end の一方だけを実行する。
    execute if data storage asset:context {Duration:-1} run data modify storage asset:effect Current.ShouldFinish set value true
    execute if data storage asset:context {Duration:0} run data modify storage asset:effect Current.ShouldFinish set value true
    execute if data storage asset:context {Stack:0} run data modify storage asset:effect Current.ShouldFinish set value true
    execute if data storage asset:effect Current.ShouldFinish run function asset_manager:effect/finish.m with storage asset:effect Current
