#> asset_manager:effect/snapshot
#
# SnapshotSource の末尾を取り出し、ID/Revision だけを TickQueue へ追加する。
# 保存順が A, B, C なら処理予定は C, B, A となり、末尾からの処理で元の順序に戻る。
#
# 呼出元で Effects のコピーと空の TickQueue を用意する。
# SnapshotSource が空でない場合だけ呼び、処理予定を作る間はイベントを呼ばない。
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/snapshot

# 末尾の ID と更新番号を処理予定へ移す
# 各要素の ID/Revision をコピーし、Field 等は予定に残さない。
    data modify storage asset:effect TickQueue append value {}
    data modify storage asset:effect TickQueue[-1].ID set from storage asset:effect SnapshotSource[-1].ID
    data modify storage asset:effect TickQueue[-1].Revision set from storage asset:effect SnapshotSource[-1].Revision
    data remove storage asset:effect SnapshotSource[-1]

# コピーが残っていれば、次の末尾を取り出す
    execute if data storage asset:effect SnapshotSource[0] run function asset_manager:effect/snapshot
