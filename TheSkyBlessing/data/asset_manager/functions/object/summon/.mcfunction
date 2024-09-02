#> asset_manager:object/summon/
#
#
#
# @within function api:object/summon


# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage api: Argument.ID

# 召喚
    function asset_manager:object/summon/summon.m with storage asset:context

# 継承が行われている場合そのデータを追加する
    execute if data storage asset:object ID if data storage asset:object Extends[0] run function asset_manager:object/summon/put_id_to_map
    execute if data storage asset:object ID run data modify storage asset:object FieldOverride set from storage api: Argument.FieldOverride

# 初期化処理を実行
    execute if data storage asset:object ID as @e[tag=ObjectInit,distance=..0.01] run function asset_manager:object/summon/init

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
