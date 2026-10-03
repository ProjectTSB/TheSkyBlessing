#> asset_manager:effect/finish.m
#
# 保存済みの Duration / Stack で終了イベントを決め、Effects 配列から対象を削除してから呼び出す。
# 終了イベント内で同 ID を新規付与した場合、その保存データは削除・上書きしない。
#
# @s は現在の付与先で、OhMyDat もその保存先を参照する。process.m の書き戻し後に Current を渡す。
#
# @input args
#   ID : int
#   Revision : int
# @within function asset_manager:effect/process.m

# context を書き戻した後の Effect データを取得する
# ID と Revision が一致するものだけを扱い、対象が既にない場合は何もしない。
    data remove storage asset:effect TargetEffect
    $data modify storage asset:effect TargetEffect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}]
    execute unless data storage asset:effect TargetEffect run return 0

# 再付与イベントが予約されていれば終了を次回へ回す
# イベント中に give → remove の順で呼んだ場合は、次回の re-given で差分処理を済ませてから remove を呼ぶ。
    execute if data storage asset:effect TargetEffect.NextEvent run return 0

# 削除予約を自然終了より優先し、終了イベントを一つに決める
# Duration=-1 と Stack=0 が重なっても remove / end を二重に呼ばない。
    execute if data storage asset:effect TargetEffect{Duration:-1} run data modify storage asset:effect Current.EndEvent set value "remove"
    execute unless data storage asset:effect Current.EndEvent if data storage asset:effect TargetEffect{Duration:0} run data modify storage asset:effect Current.EndEvent set value "end"
    execute unless data storage asset:effect Current.EndEvent if data storage asset:effect TargetEffect{Stack:0} run data modify storage asset:effect Current.EndEvent set value "end"
    execute unless data storage asset:effect Current.EndEvent run return 0

# 終了イベントを呼ぶ前に、context の書き戻し・読み直しを無効にして対象のデータを削除する
# Phase=ending では API が終了する Effect の context を保存データへ書き戻さない。
# 終了イベント内の get は削除済みのデータを返さず、同 ID の give は新規付与として扱われる。
    data modify storage asset:effect Current.Phase set value "ending"
    $data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID),Revision:$(Revision)}]

# 確定した終了イベントを一度だけ実行する
# 終了する Effect の context はイベントに渡すが、復帰後は保存せず foreach が片付ける。
    execute if data storage asset:effect Current{EndEvent:"remove"} run function asset_manager:effect/events/remove/
    execute if data storage asset:effect Current{EndEvent:"end"} run function asset_manager:effect/events/end/
