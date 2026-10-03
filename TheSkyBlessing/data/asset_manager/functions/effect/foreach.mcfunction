#> asset_manager:effect/foreach
#
# TickQueue の予定を順に処理する
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/foreach

# 次の処理対象を取得する
    data modify storage asset:effect Current set value {}
    data modify storage asset:effect Current.ID set from storage asset:effect TickQueue[-1].ID
    data modify storage asset:effect Current.Revision set from storage asset:effect TickQueue[-1].Revision
    data remove storage asset:effect TickQueue[-1]
    function oh_my_dat:please
    function asset_manager:effect/process.m with storage asset:effect Current

# リセット
    data remove storage asset:effect Current
    data remove storage asset:effect TargetEffect
    data remove storage asset:context id
    data remove storage asset:context originID
    data remove storage asset:context this
    data remove storage asset:context Duration
    data remove storage asset:context Stack
    data remove storage asset:context PreviousField
    scoreboard players reset $RequireClearLv Temporary

# 次の Effect へ進む
    execute if data storage asset:effect TickQueue[0] run function asset_manager:effect/foreach
