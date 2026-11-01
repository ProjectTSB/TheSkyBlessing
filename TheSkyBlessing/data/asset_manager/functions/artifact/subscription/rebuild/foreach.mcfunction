#> asset_manager:artifact/subscription/rebuild/foreach
# @within function
#   asset_manager:artifact/subscription/rebuild/
#   asset_manager:artifact/subscription/rebuild/foreach

# 先頭の ID の宣言を足す
    data modify storage asset:artifact SubscriptionTarget.ID set from storage asset:artifact SubscriptionTargets[0]
    function asset_manager:artifact/subscription/rebuild/add.m with storage asset:artifact SubscriptionTarget

# loop
    data remove storage asset:artifact SubscriptionTargets[0]
    execute if data storage asset:artifact SubscriptionTargets[0] run function asset_manager:artifact/subscription/rebuild/foreach
