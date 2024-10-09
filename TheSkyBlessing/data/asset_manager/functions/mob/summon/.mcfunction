#> asset_manager:mob/summon/
#
#
#
# @within function api:mob/core/summon

# IsAbstractがtrueだった場合はエラーが出る
    execute if data storage asset:mob {IsAbstract:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"このモブは継承せずに呼び出してはいけない！"}]

# 召喚
    function asset_manager:mob/summon/summon.m with storage asset:context

# super.summon呼び出し
#    execute unless data storage asset:mob {Implement:true} run function asset_manager:object/summon/call_super_methods/
#    data remove storage asset:mob Implement
