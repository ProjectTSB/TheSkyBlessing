#> api:mob/core/summon
#
#
#
# @within function api:mob/summon

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# 既存にasset:context thisが存在する場合に備えて退避させる
    function asset_manager:common/context/this/stash

# 念のためリセット
    data remove storage asset:mob Return.Summoned

# ID
    data modify storage asset:context id set from storage api: Argument.ID

# データを取得
    function #asset:mob/register
# 継承が行われている場合そのデータを追加する
    execute if data storage asset:mob ID if data storage asset:mob Extends[0] run function api:mob/core/put_id_to_map
# データが正しくあればmobを召喚する
    execute if data storage asset:mob ID run function #asset:mob/summon
    execute if data storage asset:mob ID run data modify storage asset:mob FieldOverride set from storage api: Argument.FieldOverride
    execute if data storage asset:mob ID as @e[tag=MobInit,distance=..0.01] run function asset:mob/common/summon

# 互換性維持用: mobAPI v2 では無いにもかかわらず FieldOverride が指定されてる場合はエラーを出す
    execute unless data storage asset:mob Return{Summoned:true} if data storage api: Argument.FieldOverride run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"FieldOverride が指定されましたが、次の Mob は MobAsset v2 で作成されていません: "},{"storage":"api:","nbt":"Argument.ID"}]
# 互換性維持用: mobAPI v2に存在しなければmobAPI v1を呼び出す
    execute unless data storage asset:mob Return{Summoned:true} run function #asset:mob/summon

# v1 でも召喚できなければエラーを表示する
    execute unless data storage asset:mob Return{Summoned:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのMobは存在しません: "},{"storage":"api:","nbt":"Argument.ID"}]

# リセット
    data remove storage asset:mob Return.Summoned

# 退避させたasset:context idを戻す
    function asset_manager:common/context/id/pop

# 退避させたasset:context thisを戻す
    function asset_manager:common/context/this/pop
