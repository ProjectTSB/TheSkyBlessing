#> asset_manager:object/summon/
#
#
#
# @within function
#   api:object/core/summon
#   asset_manager:object/summon/call_super_methods/foreach

# IsAbstractがtrueだった場合はエラーが出る
    execute if data storage asset:object {IsAbstract:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"このオブジェクトは継承せずに呼び出してはいけない！"}]

# 召喚
    function asset_manager:object/summon/summon.m with storage asset:context

# super.summon呼び出し
    execute unless data storage asset:object {Implement:true} run function asset_manager:object/summon/call_super_methods/
