#> asset_manager:artifact/subscription/compare_ids
#
# 持っている神器の ID を、前に購読の一覧を作ったときの ID と比べ、違えば一覧を作り直させる
# hotbar の持ち替えのように、持ち物が変わっても ID が同じなら作り直さない
#
# @within function asset_manager:artifact/triggers/

# 今の ID を集める
    function asset_manager:artifact/subscription/collect_ids

# 一覧を作ったときの ID と違えば、作り直させる
    function oh_my_dat:please
    execute store success storage asset:artifact SubscriptionIDsChanged byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactSubscriptionIDs set from storage asset:artifact SubscriptionIDs
    execute if data storage asset:artifact {SubscriptionIDsChanged:true} run tag @s add ArtifactSubscription.Outdated

# リセット
    data remove storage asset:artifact SubscriptionIDsChanged
