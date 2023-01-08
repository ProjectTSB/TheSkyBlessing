#> asset:trader/0002.tool_merchant/register/register
#
#
#
# @within function asset:trader/0002.tool_merchant/register/


# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:19,Y:15,Z:-29}

# ID (int)
    data modify storage asset:trader ID set value 2
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"道具商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 鉄剣
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:iron_sword",Count:1b}

# 取引 プロテクション
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value 966

# 取引 望遠鏡
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:spyglass",Count:1b}

# 取引 釣り竿
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:fishing_rod",Count:1b}

# 取引 弓
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:bow",Count:1b}

# 取引 矢
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:arrow",Count:16b}

# 取引 見通しの書
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:5b}
    data modify storage asset:trader Trades[-1].Sell set value 1

# 登録
    function asset:trader/common/register