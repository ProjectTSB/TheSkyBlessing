#> asset:mob/extends
#
#
#
# @within function asset:mob/*/register

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage asset:mob ExtendsID
# データを取得
    function #asset:mob/register
# データチェック
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのMobは存在しません: "},{"storage":"api:","nbt":"Argument.ID"}]
    execute unless data storage asset:mob {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのMobを継承することは出来ません: "},{"storage":"api:","nbt":"Argument.ID"}]

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
