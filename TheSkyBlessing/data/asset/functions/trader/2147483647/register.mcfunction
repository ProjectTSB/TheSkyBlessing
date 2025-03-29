#> asset:trader/2147483647/register
#
#
#
# @within function asset:trader/example/register/

execute unless loaded 16 4 0 run return 1

# ID (int)
    data modify storage asset:trader ID set value 2147483647
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [16,4,0]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"未知の商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 180f
# 取引1
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    # 要求物2 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 1
    # 取引可能回数 (int) (オプション)
        data modify storage asset:trader Trades[-1].MaxUses set value 5
    # 攻略進捗条件 (int) (オプション)
        # data modify storage asset:trader Trades[-1].RequiredProgress set value 0
# 取引2
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-3",Count:1b}
    # 要求物2 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:8b}
    # 販売物 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-4",Count:1b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value 2147483647
    # 攻略進捗条件 (int) (オプション)
        data modify storage asset:trader Trades[-1].RequiredProgress set value 50
