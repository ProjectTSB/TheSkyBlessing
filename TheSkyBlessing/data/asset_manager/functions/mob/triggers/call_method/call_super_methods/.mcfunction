#> asset_manager:mob/triggers/call_method/call_super_methods/
#
#
#
# @within function
#   asset_manager:mob/triggers/call_method/
#   asset:mob/call.m
#   asset:mob/super.method

# IDをアドレスとしてROMを呼び出す
    data modify storage api: Argument.Address set from storage asset:context id
    function api:rom/please

# 既存のasset:context idを退避させる
    function asset_manager:common/context/id/stash

# ROMから継承元の情報を持ってくる
    data modify storage asset:mob CopiedExtends append value []
    data modify storage asset:mob CopiedExtends[-1] set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Extends

# すべての継承元のmethod呼び出し
    execute unless data storage asset:mob CopiedExtends[-1][0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"メソッド"},{"storage":"asset:context","nbt":"method"},{"text":"の実装が存在しません ID: ","color":"red"},{"storage":"asset:context","nbt":"originID"}]
    execute if data storage asset:mob CopiedExtends[-1][0] run function asset_manager:mob/triggers/call_method/call_super_methods/foreach

# リセット
    data remove storage asset:mob CopiedExtends[-1]

# 退避させたasset:context idを戻す
    function asset_manager:common/context/id/pop