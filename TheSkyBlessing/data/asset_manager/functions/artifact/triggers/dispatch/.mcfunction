#> asset_manager:artifact/triggers/dispatch/
#
# DispatchQueue に入れた神器のキャッシュの要素の入口を、先頭から順に呼ぶ
# 呼び終えると DispatchQueue は空になる
#
# @within function asset_manager:artifact/triggers/**

# 先頭の入口を呼ぶ
    function asset_manager:artifact/triggers/dispatch/call.m with storage asset:artifact DispatchQueue[0]

# loop
    data remove storage asset:artifact DispatchQueue[0]
    execute if data storage asset:artifact DispatchQueue[0] run function asset_manager:artifact/triggers/dispatch/
