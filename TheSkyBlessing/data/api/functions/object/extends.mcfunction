#> api:object/extends
#
# 他のオブジェクトを継承する
#
# @within function asset:object/*/register

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage asset:object Extends[-1]

    tellraw @a [{"text":"storage: "},{"storage":"asset:context","nbt":"id"}]

# データを取得
    #function #asset:mob/register
# データチェック
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectは存在しません: "},{"storage":"asset:context","nbt":"id"}]
    execute unless data storage asset:object {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectを継承することは出来ません: "},{"storage":"asset:context","nbt":"id"}]

# リセット
    data remove storage asset:object ExtendsSafe

# 退避させたデータを戻す
    function asset_manager:common/context_id/pop
