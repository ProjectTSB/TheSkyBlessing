#> asset_manager:object/call_method/call_super_method
#
#
#
# @within function
#   asset:object/call_method/
#   asset_manager:object/call_method/
#   asset:object/super.method

# IDをアドレスとしてROMを呼び出す
    data modify storage api: Argument.Address set from storage asset:context id
    function api:rom/please

# 既存のasset:context idを退避させる
    function asset_manager:common/context/id/stash

# ROMから継承元の情報を持ってくる
    data modify storage asset:context id set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends

# super.method呼び出し
    execute unless data storage asset:context id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"メソッド"},{"storage":"asset:context","nbt":"method"},{"text":"の実装が存在しません ID: ","color":"red"},{"storage":"asset:context","nbt":"originID"}]
    execute if data storage asset:context id run function asset_manager:object/call_method/

# 退避させたasset:context idを戻す
    function asset_manager:common/context/id/pop
