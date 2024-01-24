#> asset:trader/example/register/register
#
#
#
# @within function asset:trader/example/register/

# ID (int)
    data modify storage asset:trader ID set value -2147483647
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"未知の商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 180f
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    # 要求物2 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(artifactID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value 1
    # 取引可能回数 (int) (オプション)
        data modify storage asset:trader Trades[-1].MaxUses set value 5

# 登録
    function asset:trader/common/register