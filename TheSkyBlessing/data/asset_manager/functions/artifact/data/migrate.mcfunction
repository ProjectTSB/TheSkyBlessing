#> asset_manager:artifact/data/migrate
# @within function asset_manager:artifact/**/.m

# Triggersの空配列を用意
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers append value {}

# データを移し替え
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].Slot set from storage asset:artifact TargetItems[-1].tag.TSB.Slot
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].Trigger set from storage asset:artifact TargetItems[-1].tag.TSB.Trigger
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].Condition set from storage asset:artifact TargetItems[-1].tag.TSB.Condition
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].AttackInfo set from storage asset:artifact TargetItems[-1].tag.TSB.AttackInfo
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].MPCost set from storage asset:artifact TargetItems[-1].tag.TSB.MPCost
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].MPRequire set from storage asset:artifact TargetItems[-1].tag.TSB.MPRequire
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].CostText set from storage asset:artifact TargetItems[-1].tag.TSB.CostText
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].LocalCooldown set from storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].SpecialCooldown set from storage asset:artifact TargetItems[-1].tag.TSB.SpecialCooldown
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].DisableCooldownMessage set from storage asset:artifact TargetItems[-1].tag.TSB.DisableCooldownMessage
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].DisableMPMessage set from storage asset:artifact TargetItems[-1].tag.TSB.DisableMPMessage
    data modify storage asset:artifact TargetItems[-1].tag.TSB.Triggers[-1].LatestUsedTick set from storage asset:artifact TargetItems[-1].tag.TSB.LatestUsedTick

# 旧データを削除
    data remove storage asset:artifact TargetItems[-1].tag.TSB.Slot
    data remove storage asset:artifact TargetItems[-1].tag.TSB.Trigger
    data remove storage asset:artifact TargetItems[-1].tag.TSB.Condition
    data remove storage asset:artifact TargetItems[-1].tag.TSB.AttackInfo
    data remove storage asset:artifact TargetItems[-1].tag.TSB.MPCost
    data remove storage asset:artifact TargetItems[-1].tag.TSB.MPRequire
    data remove storage asset:artifact TargetItems[-1].tag.TSB.CostText
    data remove storage asset:artifact TargetItems[-1].tag.TSB.LocalCooldown
    data remove storage asset:artifact TargetItems[-1].tag.TSB.SpecialCooldown
    data remove storage asset:artifact TargetItems[-1].tag.TSB.DisableCooldownMessage
    data remove storage asset:artifact TargetItems[-1].tag.TSB.DisableMPMessage
    data remove storage asset:artifact TargetItems[-1].tag.TSB.LatestUsedTick
