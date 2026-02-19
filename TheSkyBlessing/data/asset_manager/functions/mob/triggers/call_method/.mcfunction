#> asset_manager:mob/triggers/call_method/
#
#
#
# @within function
#   asset:mob/call.m
#   asset_manager:mob/triggers/call_method/call_super_methods/foreach

# メソッドの実行
    function asset_manager:mob/triggers/call_method/run_method.m with storage asset:context

# super.method呼び出し
    execute unless data storage asset:mob {Implement:true} run function asset_manager:mob/triggers/call_method/call_super_methods/
