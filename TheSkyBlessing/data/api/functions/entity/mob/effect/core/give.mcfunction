#> api:entity/mob/effect/core/give
#
#
#
# @within function api:entity/mob/effect/give

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage api: Argument.ID

# register側Opt値のprefill
    data modify storage asset:effect MaxDuration set value 2147483647
    data modify storage asset:effect MaxStack set value 2147483647
    data modify storage asset:effect ProcessOnDied set value "remove"
    data modify storage asset:effect RequireClearLv set value 1

# データを取得
    function #asset:effect/register
# データチェック
    execute unless data storage asset:effect ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのエフェクトは存在しません: "},{"storage":"api:","nbt":"Argument.ID"}]
# 継承が行われている場合そのデータを追加する
    execute if data storage asset:effect ID if data storage asset:effect Extends[0] run function api:entity/mob/effect/core/put_id_to_map

# fill
    execute if data storage api: Argument.Duration run data modify storage asset:effect Duration set from storage api: Argument.Duration
    execute if data storage api: Argument.Stack run data modify storage asset:effect Stack set from storage api: Argument.Stack
    execute if data storage api: Argument.DurationOperation run data modify storage asset:effect DurationOperation set from storage api: Argument.DurationOperation
    execute if data storage api: Argument.StackOperation run data modify storage asset:effect StackOperation set from storage api: Argument.StackOperation
# API側Opt値のfill
    execute unless data storage asset:effect Stack run data modify storage asset:effect Stack set value 1
    execute unless data storage asset:effect DurationOperation run data modify storage asset:effect DurationOperation set value "replace"
    execute unless data storage asset:effect StackOperation run data modify storage asset:effect StackOperation set value "replace"

# データが正しくあれば呼び出す
    execute if data storage asset:effect ID run function asset_manager:effect/give/

# リセット
    data remove storage asset:effect ID
    data remove storage asset:effect Extends
    data remove storage asset:effect Name
    data remove storage asset:effect Description
    data remove storage asset:effect Duration
    data remove storage asset:effect Stack
    data remove storage asset:effect DurationOperation
    data remove storage asset:effect StackOperation
    data remove storage asset:effect MaxDuration
    data remove storage asset:effect MaxStack
    data remove storage asset:effect IsBadEffect
    data remove storage asset:effect ProcessOnDied
    data remove storage asset:effect RequireClearLv
    data remove storage asset:effect Field

    data remove storage asset:effect NonExistsInRom

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
