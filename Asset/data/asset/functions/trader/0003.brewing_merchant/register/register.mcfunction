#> asset:trader/0003.brewing_merchant/register/register
#
#
#
# @within function asset:trader/0003.brewing_merchant/register/


# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:11,Y:21,Z:-75}

# ID (int)
    data modify storage asset:trader ID set value 3
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"醸造商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 醸造台
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:10b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:brewing_stand",Count:1b}

# 取引 ネザーウォート
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:nether_wart",Count:1b}

# 取引 グロウストーン
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:glowstone_dust",Count:1b}

# 取引 レッドストーン
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:redstone",Count:1b}

# 取引 ウサギの足
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:rabbit_foot",Count:1b}

# 取引 発酵したクモの目
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:fermented_spider_eye",Count:1b}

# 取引 きらめくスイカ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:glistering_melon_slice",Count:1b}

# 取引 マグマクリーム
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:magma_cream",Count:1b}

# 取引 ブレイズパウダー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:blaze_powder",Count:1b}

# 取引 ガラス瓶
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:glass_bottle",Count:3b}

# 登録
    function asset:trader/common/register