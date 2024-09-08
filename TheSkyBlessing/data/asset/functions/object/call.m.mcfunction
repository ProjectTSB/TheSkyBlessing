#> asset:object/call.m
#
#
#
# @within function asset:object/example.1/tick/

# 既存のasset:context idを退避させる
    function asset_manager:common/context_id/stash
# 既存のasset:context methodを退避させる
    function asset_manager:common/custom_method/stash

# OriginID取得
    data modify storage asset:context id set from storage asset:context originID

# Methodの取得
    $data modify storage asset:context method set value $(method)

# メソッドの呼び出し
    function asset_manager:object/call_method/

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
# 退避させたasset:context methodを戻す
    function asset_manager:common/custom_method/pop
