#> api:artifact/core/from_id
# @within function
#   api:artifact/*/from_id
#   api:artifact/core/from_rarity/foreach

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# ID
    data modify storage asset:context id set from storage api: Argument.ID
# データ登録
    function asset_manager:artifact/give/register.m with storage asset:context
# validate
    execute unless data storage asset:artifact ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"このIDの神器は存在しません "},{"storage":"api:","nbt":"Argument.ID","color":"red"}]
# データをfill
    execute if data storage asset:artifact ID run data modify storage asset:context Type set from storage api: Argument.Type
    execute if data storage asset:artifact ID if data storage asset:context {Type:"drop"} run data modify storage asset:context Important set from storage api: Argument.Important
# 神器をgive
    execute if data storage asset:artifact ID run function asset_manager:artifact/give/

# 退避させたasset:context idを戻す
    function asset_manager:common/context/id/pop
