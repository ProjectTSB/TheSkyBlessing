#> asset:object/extends/foreach
#
#
#
# @within function asset:object/extends**

# IDを取得
    data modify storage asset:context id set from storage asset:object CopiedExtends[-1][0]

# 取得したIDを用いてマクロを実行する
    function asset_manager:object/summon/register.m with storage asset:context

# データチェック
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectは存在しません: "},{"storage":"asset:context","nbt":"id"}]
    execute unless data storage asset:object {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectを継承することは出来ません: "},{"storage":"asset:context","nbt":"id"}]
    execute if data storage asset:object IsFirstExtend[-1]._{_:false} unless data storage asset:object {IsAbstract:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"二つ目以降の Extends には抽象 Object のみ指定することができます。"},{"storage":"asset:context","nbt":"id"}]
    execute if data storage asset:object IsFirstExtend[-1]._{_:false} unless data storage asset:object {IsAbstract:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"原因: ID "},{"storage":"asset:context","nbt":"id"},{"text":" を継承する Object"}]

# リセット
    data remove storage asset:object ExtendsSafe

# 先頭削除 (Extends が十分に小さいことがわかっているため先頭再帰する)
    data remove storage asset:object CopiedExtends[-1][0]

# 最初の継承じゃないことをマークする
    data modify storage asset:object IsFirstExtend[-1]._._ set value false

# 要素があれば再帰
    execute if data storage asset:object CopiedExtends[-1][0] run function asset:object/extends/foreach
