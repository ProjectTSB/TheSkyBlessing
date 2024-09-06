#> asset_manager:object/summon/
#
#
#
# @within function
#   api:object/core/summon
#   asset_manager:object/summon/call_super_method

# super.summon呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/summon/call_super_method
    data remove storage asset:object Implement

# 召喚
    function asset_manager:object/summon/summon.m with storage asset:context
