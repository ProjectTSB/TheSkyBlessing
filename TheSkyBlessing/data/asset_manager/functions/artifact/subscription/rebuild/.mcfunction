#> asset_manager:artifact/subscription/rebuild/
#
# offhand・防具・hotbar の神器の ROM の宣言から、event ごとに呼ぶ入口の一覧 (購読の一覧) を作り直して保存する
# 同じ ID の神器を複数持っていても、入口は 1 回だけ一覧に入れる
#
# @within function asset_manager:artifact/triggers/

# 作り直す前の一覧を、前の持ち物で呼ぶ event のために残す
    data modify storage asset:artifact PreviousSubscriptions set from storage asset:artifact Subscriptions

# 神器の ID を集める (持ち物の比較で集めていなければ)
    execute unless data storage asset:artifact SubscriptionIDs run function asset_manager:artifact/subscription/collect_ids

# ID ごとに宣言を一覧へ足す
# 神器でない slot の ID (-2) は、足し終えた ID として先に入れておく
    data modify storage asset:artifact Subscriptions set value []
    data modify storage asset:artifact SubscribedIDs set value [{ID:-2}]
    data modify storage asset:artifact SubscriptionTargets set from storage asset:artifact SubscriptionIDs
    function asset_manager:artifact/subscription/rebuild/foreach

# 一覧と、一覧を作ったときの ID を保存する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactSubscriptions set from storage asset:artifact Subscriptions
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactSubscriptionIDs set from storage asset:artifact SubscriptionIDs
    tag @s remove ArtifactSubscription.Outdated

# リセット
    data remove storage asset:artifact SubscriptionTargets
    data remove storage asset:artifact SubscribedIDs
    data remove storage asset:artifact SubscriptionTarget
