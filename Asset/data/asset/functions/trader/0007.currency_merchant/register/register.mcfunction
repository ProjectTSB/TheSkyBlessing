#> asset:trader/0007.currency_merchant/register/register
#
#
#
# @within function asset:trader/0007.currency_merchant/register/


# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:23,Y:15,Z:-29}

# ID (int)
    data modify storage asset:trader ID set value 7
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"両替商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 羊毛を通貨に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:white_wool",Count:32b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 下位通貨を上位通貨に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/high",Count:1b}

# 取引 上位通貨を下位通貨に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:16b}

# 登録
    function asset:trader/common/register