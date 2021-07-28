#> asset_manager:sacred_treasure/core/create/set_data
#
# storageから神器を作成します
#
# @input
#   as Data
#   storage asset:sacred_treasure
#       ID : int
#       Item : ItemID
#       Name : TextComponent
#       Lore : TextComponent[]
#       RemainingCount? : int
#       Slot : Slot
#       Trigger : Trigger
#       Condition? : TextComponent
#       AttackInfo? : Component
#       MPCost : int
#       MPRequire : int
#       CostText? : TextComponent
#       LocalCooldown : int
#       SpecialCooldown : int
#       CanUsedGod : God[]
#       CustomNBT : Item.tag
# @within function asset:sacred_treasure/lib/give

#> Private
# @private
    #declare score_holder $SacredTreasureIndex

# Count
    data modify storage asset:sacred_treasure Data.Count set value 1b

# Version
    data modify storage asset:sacred_treasure Data.tag.TSB.Version set value "1.0"
# Unique Universal Identifier
    scoreboard players add $SacredTreasureIndex Global 1
    execute store result storage asset:sacred_treasure Data.tag.TSB.UUID int 1 run scoreboard players get $SacredTreasureIndex Global
# そのまま入れれるやつ
    data modify storage asset:sacred_treasure Data.id set from storage asset:sacred_treasure Item
    data modify storage asset:sacred_treasure Data.tag.CustomModelData set from storage asset:sacred_treasure ID
    data modify storage asset:sacred_treasure Data.tag.TSB.rawName set from storage asset:sacred_treasure Name
    data modify storage asset:sacred_treasure Data.tag.TSB.ID set from storage asset:sacred_treasure ID
    data modify storage asset:sacred_treasure Data.tag.TSB.Trigger set from storage asset:sacred_treasure Trigger
    data modify storage asset:sacred_treasure Data.tag.TSB.MPCost set from storage asset:sacred_treasure MPCost
    data modify storage asset:sacred_treasure Data.tag.TSB.MPRequire set from storage asset:sacred_treasure MPRequire
    data modify storage asset:sacred_treasure Data.tag.TSB.CanUsedGod set from storage asset:sacred_treasure CanUsedGod
    data modify storage asset:sacred_treasure Data.tag.TSB.RemainingCount set from storage asset:sacred_treasure RemainingCount
    data modify storage asset:sacred_treasure Data.tag.TSB.RemainingCountMAX set from storage asset:sacred_treasure RemainingCount
    data modify storage asset:sacred_treasure Data.tag.TSB.LocalCooldown set from storage asset:sacred_treasure LocalCooldown
    data modify storage asset:sacred_treasure Data.tag.TSB.SpecialCooldown set from storage asset:sacred_treasure SpecialCooldown
    data modify storage asset:sacred_treasure Data.tag.TSB.DisableCooldownMessage set from storage asset:sacred_treasure DisableCooldownMessage

# 名前
    # 残り回数が存在する場合
        execute if data storage asset:sacred_treasure RemainingCount store result score $Remain Temporary run data get storage asset:sacred_treasure RemainingCount
        execute if data storage asset:sacred_treasure RemainingCount store result score $RemainMAX Temporary run data get storage asset:sacred_treasure RemainingCount
        execute if data storage asset:sacred_treasure RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/get_name/has_remain
    # 残り回数が存在しない場合
        execute unless data storage asset:sacred_treasure RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/get_name/
    data modify storage asset:sacred_treasure Data.tag.display.Name set from block 10000 0 10000 Items[0].tag.display.Name

# Lore
    function asset_manager:sacred_treasure/core/create/set_lore
# カスタムNBT
    data modify storage asset:sacred_treasure Data.tag merge from storage asset:sacred_treasure CustomNBT

# データの適用
    data modify block 10000 0 10000 Items append from storage asset:sacred_treasure Data

# リセット
    data remove storage asset:sacred_treasure Data
    scoreboard players reset $Remain Temporary
    scoreboard players reset $RemainMAX Temporary