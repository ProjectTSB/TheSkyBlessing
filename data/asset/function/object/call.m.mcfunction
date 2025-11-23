#> asset:object/call.m
#
#
#
# @within function asset:object/*/**

# 既存のasset:context idを退避させる
    function asset_manager:common/context/id/stash
# 既存のasset:context methodを退避させる
    function asset_manager:common/context/method/stash

# OriginID取得
    data modify storage asset:context id set from storage asset:context originID

# Methodの取得
    $data modify storage asset:context method set value $(method)

# メソッドの呼び出し
    data modify storage asset:object Implements append value {_:{_:false}}
    function asset_manager:object/call_method/
    execute if data storage asset:object Implements[-1]._{_:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"メソッド"},{"storage":"asset:context","nbt":"method"},{"text":"の実装が存在しません ID: ","color":"red"},{"storage":"asset:context","nbt":"originID"}]
    data remove storage asset:object Implements[-1]

# 退避させたasset:context idを戻す
    function asset_manager:common/context/id/pop
# 退避させたasset:context methodを戻す
    function asset_manager:common/context/method/pop
