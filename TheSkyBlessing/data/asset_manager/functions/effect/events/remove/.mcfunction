#> asset_manager:effect/events/remove/
#
#
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/events/remove/

# context作成
    data modify storage asset:context id set from storage asset:effect EventWaitingEffects.Remove[-1].ID
    data modify storage asset:context Stack set from storage asset:effect EventWaitingEffects.Remove[-1].Stack
# イベント呼び出し
    function asset_manager:effect/events/remove/call
# 末尾削除
    data remove storage asset:effect EventWaitingEffects.Remove[-1]
# 要素があれば再帰
    execute if data storage asset:effect EventWaitingEffects.Remove[0] run function asset_manager:effect/events/remove/