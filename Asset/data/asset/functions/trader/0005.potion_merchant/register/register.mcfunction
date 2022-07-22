#> asset:trader/0005.potion_merchant/register/register
#
#
#
# @within function asset:trader/0005.potion_merchant/register/


# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:-3,Y:21,Z:-69}

# ID (int)
    data modify storage asset:trader ID set value 5
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"ポーション商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -45f

# 取引 牛乳パック
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:10b}
    data modify storage asset:trader Trades[-1].Sell set value 771

# 取引 ネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:5b}
    data modify storage asset:trader Trades[-1].Sell set value 143

# 取引 ハイネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:10b}
    data modify storage asset:trader Trades[-1].Sell set value 144

# 取引 アウレネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:24b}
    data modify storage asset:trader Trades[-1].Sell set value 145

# 取引 ミスティカネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:48b}
    data modify storage asset:trader Trades[-1].Sell set value 146

# 取引 アムリタ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:5b}
    data modify storage asset:trader Trades[-1].Sell set value 135

# 取引 ハイアムリタ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:10b}
    data modify storage asset:trader Trades[-1].Sell set value 136

# 取引 アウレアムリタ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:24b}
    data modify storage asset:trader Trades[-1].Sell set value 137

# 取引 ミスティカアムリタ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:36b}
    data modify storage asset:trader Trades[-1].Sell set value 138

# 取引 ソーマ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value 139

# 取引 ハイソーマ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value 140

# 取引 アウレソーマ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value 141

# 取引 ミスティカソーマ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value 142

# 登録
    function asset:trader/common/register