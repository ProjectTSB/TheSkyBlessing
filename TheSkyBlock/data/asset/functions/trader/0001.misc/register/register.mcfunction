#> asset:trader/0001.misc/register/register
#
# 雑貨マン
#
# @within function asset:trader/0001.misc/register/

# ID (int)
    data modify storage asset:trader ID set value 1
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"雑貨商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f
# 取引
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
# 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:torch",Count:16b}

# 登録
    function asset:trader/common/register