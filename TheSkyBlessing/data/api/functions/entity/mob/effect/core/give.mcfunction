#> api:entity/mob/effect/core/give
#
#
#
# @within function api:entity/mob/effect/give

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash
# ID
    data modify storage asset:context id set from storage api: Argument.ID
# prefill
    data modify storage asset:effect Duration set from storage api: Argument.Duration
    data modify storage asset:effect Stack set from storage api: Argument.Stack
    data modify storage asset:effect DurationOperation set from storage api: Argument.DurationOperation
    data modify storage asset:effect StackOperation set from storage api: Argument.StackOperation
# API側Opt値のprefill
    execute unless data storage asset:effect Stack run data modify storage asset:effect Stack set value 1
    execute unless data storage asset:effect DurationOperation run data modify storage asset:effect DurationOperation set value "replace"
    execute unless data storage asset:effect StackOperation run data modify storage asset:effect StackOperation set value "replace"
# register側Opt値のprefill
    data modify storage asset:effect DurationMax set value 2147483647
    data modify storage asset:effect StackMax set value 2147483647
    data modify storage asset:effect ProcessOnDied set value "remove"
    data modify storage asset:effect RequireClearLvWithApi set value 1
    data modify storage asset:effect AllowClearWithMilk set value true
# データを取得
    function #asset:effect/register
# データチェック
    execute unless data storage asset:effect ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのエフェクトは存在しません: "},{"storage":"api:","nbt":"Argument.ID"}]
# データが正しくあれば呼び出す
    execute if data storage asset:effect ID run function asset_manager:effect/give/
# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop