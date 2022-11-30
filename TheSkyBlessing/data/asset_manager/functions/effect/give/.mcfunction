#> asset_manager:effect/give/
#
#
#
# @within function api:entity/mob/effect/core/give

# 引数のチェック
    function asset_manager:effect/give/validate
# Validなら付与する
    execute if data storage asset:effect {IsValidArgument:true} run function asset_manager:effect/give/give
# リセット
    data remove storage asset:effect IsValidArgument
    data remove storage asset:effect ID
    data remove storage asset:effect Duration
    data remove storage asset:effect Stack
    data remove storage asset:effect DurationOperation
    data remove storage asset:effect StackOperation
    data remove storage asset:effect MaxDuration
    data remove storage asset:effect MaxStack
    data remove storage asset:effect RequireClearLvWithApi
    data remove storage asset:effect AllowClearWithMilk