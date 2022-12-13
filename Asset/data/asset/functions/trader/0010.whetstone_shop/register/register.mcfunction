#> asset:trader/0010.whetstone_shop/register/register
#
#
#
# @within function asset:trader/0010.whetstone_shop/register/

# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:16,Y:15,Z:-27}

# ID (int)
    data modify storage asset:trader ID set value 10
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"砥石商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -70f

# 取引 下位通貨を砥石に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value 958

# 登録
    function asset:trader/common/register