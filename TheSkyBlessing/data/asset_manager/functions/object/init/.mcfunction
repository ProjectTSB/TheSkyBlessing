#> asset_manager:object/init/
#
#
#
# @within function
#   asset_manager:object/summon/init
#   asset_manager:object/init/
#   asset_manager:object/init/call_super_methods/foreach

# Init処理
    function asset_manager:object/init/init.m with storage asset:context

# super.init呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/init/call_super_methods/
