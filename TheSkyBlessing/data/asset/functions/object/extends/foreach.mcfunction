#> asset:object/extends/foreach
#
#
#
# @within function asset:object/extends**

# IDを取得
    data modify storage asset:context id set from storage asset:object Extends[0]

# 取得したIDを用いてマクロを実行する
    function asset_manager:object/summon/register.m with storage asset:context

# データチェック
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectは存在しません: "},{"storage":"asset:context","nbt":"id"}]
    execute unless data storage asset:object {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectを継承することは出来ません: "},{"storage":"asset:context","nbt":"id"}]

# リセット
    data remove storage asset:object ExtendsSafe

# 先頭削除 (Extends が十分に小さいことがわかっているため先頭再帰する)
    data remove storage asset:object Extends[0]
# 要素があれば再帰
    execute if data storage asset:object Extends[0] run function asset:object/extends/foreach
