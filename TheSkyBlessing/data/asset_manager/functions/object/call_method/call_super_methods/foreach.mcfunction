#> asset_manager:object/call_method/call_super_methods/foreach
#
#
#
# @within function asset_manager:object/call_method/call_super_methods/*

# IDを取得
    data modify storage asset:context id set from storage asset:object CopiedExtends[-1][-1]

# super.init呼び出し
    data modify storage asset:object Essentials append value {_:{_:false}}
    execute if data storage asset:object Essentials[-2]._{_:true} unless data storage asset:object CopiedExtends[-1][1] run data modify storage asset:object Essentials[-1] set value {_:{_:true}}
    function asset_manager:object/call_method/
    data remove storage asset:object Essentials[-1]

# 末尾削除
    data remove storage asset:object CopiedExtends[-1][-1]
# 要素があれば再帰
    execute if data storage asset:object CopiedExtends[-1][-1] run function asset_manager:object/call_method/call_super_methods/foreach
