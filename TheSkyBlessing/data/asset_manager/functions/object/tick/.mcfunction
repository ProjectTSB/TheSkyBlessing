#> asset_manager:object/tick/
#
# ObjectのTick処理
#
# @within function
#   asset_manager:object/triggers/tick
#   asset_manager:object/tick/call_super_methods/foreach

# 取得した数値でマクロ実行
    function asset_manager:object/tick/tick.m with storage asset:context

# super.tick呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/tick/call_super_methods/
    data remove storage asset:object Implement
