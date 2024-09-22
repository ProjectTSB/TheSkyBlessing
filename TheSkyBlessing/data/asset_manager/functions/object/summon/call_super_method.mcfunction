#> asset_manager:object/summon/call_super_method
#
#
#
# @within function asset_manager:object/summon/

# IDをアドレスとしてROMを呼び出す
    data modify storage api: Argument.Address set from storage asset:context id
    function api:rom/please

# 既存のasset:context idを退避させる
    function asset_manager:common/context_id/stash

# ROMから継承元の情報を持ってくる
    data modify storage asset:context id set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends

# super.summon呼び出し
    execute if data storage asset:context id run function asset_manager:object/summon/

# 退避させたasset:context idを戻す
    function asset_manager:common/context_id/pop
