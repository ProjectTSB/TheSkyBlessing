#> asset_manager:artifact/subscription/rebuild/append
# @within function asset_manager:artifact/subscription/rebuild/add.m

# ID の番号の ROM を呼び出す
    data modify storage api: Argument.Address set from storage asset:artifact SubscriptionTarget.ID
    function api:rom/please
# まだ宣言が無い神器は、box に give して宣言を書き込ませる
    execute unless data storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact run function asset_manager:artifact/subscription/rebuild/fill

# 宣言の Triggers に Namespace を付けて、一覧に足す
    data modify storage asset:artifact SubscriptionTemp set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact.Triggers
    data modify storage asset:artifact SubscriptionTemp[].Namespace set from storage rom: _[-4][-4][-4][-4][-4][-4][-4][-4].Artifact.Namespace
    data modify storage asset:artifact Subscriptions append from storage asset:artifact SubscriptionTemp[]

# リセット
    data remove storage asset:artifact SubscriptionTemp
