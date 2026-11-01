#> asset_manager:artifact/subscription/rebuild/add.m
# @input args ID : int
# @within function asset_manager:artifact/subscription/rebuild/foreach

# 足し終えた ID なら何もしない
    $execute if data storage asset:artifact SubscribedIDs[{ID:$(ID)}] run return 0
    $data modify storage asset:artifact SubscribedIDs append value {ID:$(ID)}
# 宣言を一覧に足す
    function asset_manager:artifact/subscription/rebuild/append
