#> asset:mob/extends/foreach
#
#
#
# @within function
#   asset:mob/extends
#   asset:mob/extends/foreach

# IDを取得
    data modify storage asset:context id set from storage asset:mob CopiedExtends[-1][0]

# 取得したIDを用いてマクロを実行する
    function asset_manager:mob/triggers/summon/register.m with storage asset:context

# データチェック
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectは存在しません: "},{"storage":"asset:context","nbt":"id"}]
    execute unless data storage asset:mob {ExtendsSafe:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のIDのObjectを継承することは出来ません: "},{"storage":"asset:context","nbt":"id"}]
    execute if data storage asset:mob IsFirstExtend[-1]._{_:false} unless data storage asset:mob {IsAbstract:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"二つ目以降の Extends には抽象 Object のみ指定することができます。"},{"storage":"asset:context","nbt":"id"}]
    execute if data storage asset:mob IsFirstExtend[-1]._{_:false} unless data storage asset:mob {IsAbstract:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"原因: ID "},{"storage":"asset:context","nbt":"id"},{"text":" を継承する Object"}]

# リセット
    data remove storage asset:mob ExtendsSafe

# 先頭削除 (Extends が十分に小さいことがわかっているため先頭再帰する)
    data remove storage asset:mob CopiedExtends[-1][0]

# 最初の継承じゃないことをマークする
    data modify storage asset:mob IsFirstExtend[-1]._._ set value false

# 要素があれば再帰
    execute if data storage asset:mob CopiedExtends[-1][0] run function asset:mob/extends/foreach
