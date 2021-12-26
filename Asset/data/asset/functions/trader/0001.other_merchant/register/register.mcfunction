#> asset:trader/0001.other_merchant/register/register
#
#
#
# @within function asset:trader/0001.other_merchant/register/

# ID (int)
    data modify storage asset:trader ID set value 1
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"雑貨商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 たいまつ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:torch",Count:16b}

# 取引 はしご
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ladder",Count:1b}

# 取引 足場
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:scaffolding",Count:1b}

# 取引 骨粉
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:bone_meal",Count:1b}

# 取引 額縁
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:item_frame",Count:1b}

# 取引 シュルカーボックス
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:shulker_box",Count:1b}

# 登録
    function asset:trader/common/register