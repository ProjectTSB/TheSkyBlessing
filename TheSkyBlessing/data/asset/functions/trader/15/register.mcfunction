#> asset:trader/15/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 37 15 -6 run return 1

# ID (int)
    data modify storage asset:trader ID set value 15
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [37,15,-6]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"日替わり商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 180f

# 日替わりで更新する (boolean)
    data modify storage asset:trader DailyUpdate set value true

# 売る神器を決める
    function asset:trader/15/select_artifact/

# 取引 Lv1神器
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-1",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set from storage asset:temp Sell[1]
    data modify storage asset:trader Trades[-1].MaxUses set value 1
    #data modify storage asset:trader Trades[-1].RequiredProgress set value 5
    #data modify storage asset:trader Trades[-1].RequiredProgressToDisplay set value 5

# 取引 Lv2神器
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-2",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set from storage asset:temp Sell[2]
    data modify storage asset:trader Trades[-1].MaxUses set value 1
    data modify storage asset:trader Trades[-1].RequiredProgress set value 29
    data modify storage asset:trader Trades[-1].RequiredProgressToDisplay set value 29

# 取引 Lv3神器
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-3",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:3b}
    data modify storage asset:trader Trades[-1].Sell set from storage asset:temp Sell[3]
    data modify storage asset:trader Trades[-1].MaxUses set value 1
    data modify storage asset:trader Trades[-1].RequiredProgress set value 54
    data modify storage asset:trader Trades[-1].RequiredProgressToDisplay set value 54

# 取引 Lv4神器
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-4",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set from storage asset:temp Sell[4]
    data modify storage asset:trader Trades[-1].MaxUses set value 1
    data modify storage asset:trader Trades[-1].RequiredProgress set value 75
    data modify storage asset:trader Trades[-1].RequiredProgressToDisplay set value 75

# リセット
    data remove storage asset:temp Sell
