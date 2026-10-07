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

# プレイヤーの攻略度に対応した神器
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set from storage asset:temp Sell.CurrentProgress
    data modify storage asset:trader Trades[-1].MaxUses set value 1

# プレイヤーの攻略段階までの神器
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set from storage asset:temp Sell.UpToProgress
    data modify storage asset:trader Trades[-1].MaxUses set value 1

# リセット
    data remove storage asset:temp Sell
