#> asset:trader/0004.shard_merchant/register/register
#
#
#
# @within function asset:trader/0004.shard_merchant/register/


# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:-36,Y:21,Z:-29}

# ID (int)
    data modify storage asset:trader ID set value 4
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"シャード商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -90f

# 取引 シャードLv1
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-1",Count:1b}

# 取引 シャードLv2
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-2",Count:1b}

# 取引 シャードLv3
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-3",Count:1b}

# 取引 シャードLv4
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-4",Count:1b}

# 登録
    function asset:trader/common/register