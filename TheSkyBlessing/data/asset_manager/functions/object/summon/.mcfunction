#> asset_manager:object/summon/
#
#
#
# @within function api:object/summon

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage api: Argument.ID

# データ登録
    function asset_manager:object/summon/register.m with storage asset:context

# validate
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:object ID run return fail

# 継承が行われている場合そのデータを追加する
    execute if data storage asset:object Extends[0] run function asset_manager:object/summon/put_id_to_map
    data modify storage asset:context this set from storage asset:object Field
    data modify storage asset:context this merge from storage api: Argument.FieldOverride

# super.summon呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/summon/call_super_method
    data remove storage asset:object Implement

# 召喚
    function asset_manager:object/summon/summon.m with storage asset:context

# 初期化処理を実行
    execute as @e[tag=ObjectInit,distance=..0.01] run function asset_manager:object/summon/init

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
