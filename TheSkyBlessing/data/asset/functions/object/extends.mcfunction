#> asset:object/extends
#
# 他のオブジェクトを継承する
#
# @within function asset:object/*/register

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# IDを取得
    data modify storage asset:context id set from storage asset:object Extends[-1]

# 取得したIDを用いてマクロを実行する
    function asset_manager:object/summon/register.m with storage asset:context

# データチェック
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectは存在しません: "},{"storage":"asset:context","nbt":"id"}]
    execute unless data storage asset:object {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectを継承することは出来ません: "},{"storage":"asset:context","nbt":"id"}]

# リセット
    data remove storage asset:object ExtendsSafe

# 退避させたデータを戻す
    function asset_manager:common/context/id/pop
