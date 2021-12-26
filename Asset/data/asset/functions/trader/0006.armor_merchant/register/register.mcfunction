#> asset:trader/0006.armor_merchant/register/register
#
#
#
# @within function asset:trader/0006.armor_merchant/register/

# ID (int)
    data modify storage asset:trader ID set value 6
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"防具商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 90
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 92
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:iron_ingot",Count:12b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 91
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:diamond",Count:12d}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 93
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value

# 登録
    function asset:trader/common/register