#> asset:effect/super.given
#
#
#
# @within function asset:effect/*/given/

# IDをアドレスとしてROMを呼び出す
    data modify storage api: Argument.Address set from storage asset:context id
    function api:rom/please

# validate
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Effect.Extends run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"次のEffectは継承を行っていないため、継承元を呼び出すことは出来ません:"},{"storage":"asset:context","nbt":"id"}]

# 既存のasset:context idを退避させる
    function asset_manager:common/context_id/stash

# ROMから継承元の情報を持ってくる
    data modify storage asset:context id set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Effect.Extends

# super.given呼び出し
    execute if data storage asset:context id run function #asset:effect/given

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop