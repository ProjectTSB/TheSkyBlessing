#> asset_manager:artifact/triggers/dispatch/
#
# DispatchQueue に入れた神器のキャッシュの要素の入口を、先頭から順に呼ぶ
# 入口を呼ぶ間は、その神器の Field の中身を storage asset:context this に入れる
# 呼び終えると DispatchQueue は空になる
#
# @within function asset_manager:artifact/triggers/**

# 先頭の入口を、その神器の Field を this に入れて呼ぶ
    data modify storage asset:context this set from storage asset:artifact DispatchQueue[0].Field
    function asset_manager:artifact/triggers/dispatch/call.m with storage asset:artifact DispatchQueue[0]
    data remove storage asset:context this

# loop
    data remove storage asset:artifact DispatchQueue[0]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
