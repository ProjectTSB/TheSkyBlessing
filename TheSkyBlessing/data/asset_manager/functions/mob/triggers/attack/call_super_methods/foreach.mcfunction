#> asset_manager:mob/triggers/attack/call_super_methods/foreach
#
#
#
# @within function
#   asset_manager:mob/triggers/attack/call_super_methods/
#   asset_manager:mob/triggers/attack/call_super_methods/foreach

# IDを取得
    data modify storage asset:context id set from storage asset:mob CopiedExtends[-1][0]

# super.attack呼び出し
    function asset_manager:mob/triggers/attack/

# 先頭削除 (Extends が十分に小さいことがわかっているため先頭再帰する)
    data remove storage asset:mob CopiedExtends[-1][0]
# 要素があれば再帰
    execute if data storage asset:mob CopiedExtends[-1][0] run function asset_manager:mob/triggers/attack/call_super_methods/foreach
