#> asset_manager:object/call_method/
#
#
#
# @within function
#   asset:object/call.m
#   asset_manager:object/call_method/call_super_methods/foreach

# メソッドの実行
    function asset_manager:object/call_method/run_method.m with storage asset:context

# super.summon呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/call_method/call_super_methods/
