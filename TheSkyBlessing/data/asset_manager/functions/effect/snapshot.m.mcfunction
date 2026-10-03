#> asset_manager:effect/snapshot.m
#
# 保存順に {ID, Revision} を TickQueue へ追加する。
# 処理予定には Field 等の状態をコピーしない。process.m が実行直前に保存データから読み直す。
#
# 呼出元で OhMyDat の参照先を付与先へ合わせ、空の TickQueue と走査スコアを用意する。
#
# @input args
#   Index : int
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/snapshot.m

# 旧データの Revision を補完する
# 未設定の場合は 0 を補い、give が割り当てる更新番号と同じ形式で照合できるようにする。
    $execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[$(Index)].Revision run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[$(Index)].Revision set value 0

# 現在の添字から対象の ID と更新番号を記録する
# 添字を使うのは、配列を変更するイベントが始まる前だけ。対象の識別には使わないため、処理予定には保存しない。
    data modify storage asset:effect TickQueue append value {}
    $data modify storage asset:effect TickQueue[-1].ID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[$(Index)].ID
    $data modify storage asset:effect TickQueue[-1].Revision set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[$(Index)].Revision

# 開始時に数えた要素数まで進める
# Iterator と走査スコアは呼出元の tick が初期化し、foreach.m の前に先頭へ戻す。
    scoreboard players add $EffectTickIndex Temporary 1
    execute store result storage asset:effect Iterator.Index int 1 run scoreboard players get $EffectTickIndex Temporary
    execute if score $EffectTickIndex Temporary < $EffectTickCount Temporary run function asset_manager:effect/snapshot.m with storage asset:effect Iterator
