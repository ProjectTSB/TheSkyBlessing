#> asset_manager:effect/foreach
#
# TickQueue の一件を処理し、context を破棄して次の予定へ進む。
# API が Effects 配列を並べ替えても、処理予定の内容と順序は変えない。
#
# @s は現在の付与先。TickQueue は逆順に作成済みで、空でない場合だけ呼ぶ。
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/foreach

# 次に処理する Effect の ID/Revision を選び、OhMyDat の参照先を付与先へ戻す
# Current は ID/Revision で初期化する。前の Effect の Phase や削除予約は引き継がない。
# process.m は保存データとの照合、イベント実行、保存、終了判定を担当する。
    data modify storage asset:effect Current set value {}
    data modify storage asset:effect Current.ID set from storage asset:effect TickQueue[-1].ID
    data modify storage asset:effect Current.Revision set from storage asset:effect TickQueue[-1].Revision
    data remove storage asset:effect TickQueue[-1]
    function oh_my_dat:please
    function asset_manager:effect/process.m with storage asset:effect Current

# Effect ごとの作業状態を破棄する
# process.m が対象なしで戻った場合も作業状態を破棄し、次の Effect へ context を持ち越さない。
    data remove storage asset:effect Current
    data remove storage asset:effect TargetEffect
    data remove storage asset:context id
    data remove storage asset:context originID
    data remove storage asset:context this
    data remove storage asset:context Duration
    data remove storage asset:context Stack
    data remove storage asset:context PreviousField
    scoreboard players reset $RequireClearLv Temporary

# 処理予定が残っていれば、次の末尾を取り出す
    execute if data storage asset:effect TickQueue[0] run function asset_manager:effect/foreach
