#> asset_manager:effect/events/given/
#
#
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/events/given/

# context作成
    data modify storage asset:context id set from storage asset:effect EventWaitingEffects.Given[-1].ID
    data modify storage asset:context Stack set from storage asset:effect EventWaitingEffects.Given[-1].Stack
# イベント呼び出し
    function asset_manager:effect/events/given/call
# 末尾削除
    data remove storage asset:effect EventWaitingEffects.Given[-1]
# 要素があれば再帰
    execute if data storage asset:effect EventWaitingEffects.Given[0] run function asset_manager:effect/events/given/