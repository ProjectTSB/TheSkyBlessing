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