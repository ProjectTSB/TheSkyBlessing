#> asset_manager:effect/events/tick
#
#
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/events/tick

# context作成
    data modify storage asset:context id set from storage asset:effect EventWaitingEffects.Tick[-1].ID
    data modify storage asset:context Stack set from storage asset:effect EventWaitingEffects.Tick[-1].Stack
# イベント呼び出し
    function #asset:effect/tick
# 末尾削除
    data remove storage asset:effect EventWaitingEffects.Tick[-1]
# 要素があれば再帰
    execute if data storage asset:effect EventWaitingEffects.Tick[0] run function asset_manager:effect/events/tick