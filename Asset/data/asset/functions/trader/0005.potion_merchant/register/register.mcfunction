#> asset:trader/0005.potion_merchant/register/register
#
#
#
# @within function asset:trader/0005.potion_merchant/register/

# ID (int)
    data modify storage asset:trader ID set value 5
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"ポーション商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 135
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 136
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 137
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:6b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 138
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 139
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:3b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 140
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:6b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 141
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:15b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 142
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 登録
    function asset:trader/common/register