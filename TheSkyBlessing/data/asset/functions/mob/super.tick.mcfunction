#> asset:mob/super.tick
#
#
#
# @within function asset:mob/*/tick/

# validate
    execute unless data storage asset:context ExtendsID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のMobは継承を行っていないため、継承元を呼び出すことは出来ません:"},{"storage":"asset:context","nbt":"id"}]

# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash

# ID
    data modify storage asset:context id set from storage asset:context ExtendsID
# super.tick呼び出し
    execute if data storage asset:context id run function #asset:mob/tick

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop