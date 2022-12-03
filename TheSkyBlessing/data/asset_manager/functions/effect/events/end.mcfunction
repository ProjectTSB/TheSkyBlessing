#> asset_manager:effect/events/end
#
#
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/events/end

# context作成
    data modify storage asset:context id set from storage asset:effect EventWaitingEffects.End[-1].ID
    data modify storage asset:context Stack set from storage asset:effect EventWaitingEffects.End[-1].Stack
# イベント呼び出し
    function #asset:effect/end
# 末尾削除
    data remove storage asset:effect EventWaitingEffects.End[-1]
# 要素があれば再帰
    execute if data storage asset:effect EventWaitingEffects.End[0] run function asset_manager:effect/events/end