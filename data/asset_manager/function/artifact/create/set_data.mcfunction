#> asset_manager:artifact/create/set_data
#
# storageから神器を作成します
#
# @input
#   as Data
#   storage asset:artifact
#       ID : int
#       Item : ItemID
#       Name : TextComponent
#       Lore : TextComponent[]
#       RemainingCount? : int
#       Slot : Slot
#       Trigger : Trigger
#       Condition? : TextComponent
#       MPCost : int
#       MPRequire : int
#       MPHealWhenHit : int
#       ConsumeItem? : {Item: TextComponent, Count: int, Extra?: TextComponent}
#       LocalCooldown? : int
#       TypeCooldown? : {Type: enum(CooldownType), Duration: int}
#       SecondaryTypeCooldown? : {Type: enum(CooldownType), Duration: int}
#       SpecialCooldown? : int
#       AttackInfo? : Component
#       Equipment? : Component
#       DisabledFlag? : Component
#       CanUsedGod : God[]
#       CustomNBT : Item.tag
# @within function asset:artifact/common/give

#> Private
# @private
    #declare score_holder $ArtifactIndex

# 移行
    data modify storage asset:artifact BaseItem set from storage asset:artifact Item
# 初期化
    data modify storage asset:artifact Item set value {}
# Count
    data modify storage asset:artifact Item.Count set value 1b

# Version
    data modify storage asset:artifact Item.tag.TSB.Version set from storage global GameVersion
# Unique Universal Identifier
    scoreboard players add $ArtifactIndex Global 1
    execute store result storage asset:artifact Item.tag.TSB.UUID int 1 run scoreboard players get $ArtifactIndex Global
# 扱える神のエイリアスを修正する
    execute if data storage asset:artifact {CanUsedGod:"ALL"} run data modify storage asset:artifact CanUsedGod set value ['Flora','Urban','Nyaptov','Wi-ki','Rumor']
# そのまま入れれるやつ
    data modify storage asset:artifact Item.id set from storage asset:artifact BaseItem
    data modify storage asset:artifact Item.tag.CustomModelData set from storage asset:artifact ID
    data modify storage asset:artifact Item.tag.TSB.rawName set from storage asset:artifact Name
    data modify storage asset:artifact Item.tag.TSB.ID set from storage asset:artifact ID
    data modify storage asset:artifact Item.tag.TSB.Trigger set from storage asset:artifact Trigger
    data modify storage asset:artifact Item.tag.TSB.MPCost set from storage asset:artifact MPCost
    data modify storage asset:artifact Item.tag.TSB.MPRequire set from storage asset:artifact MPRequire
    data modify storage asset:artifact Item.tag.TSB.MPHealWhenHit set from storage asset:artifact MPHealWhenHit
    data modify storage asset:artifact Item.tag.TSB.CanUsedGod set from storage asset:artifact CanUsedGod
    data modify storage asset:artifact Item.tag.TSB.RemainingCount set from storage asset:artifact RemainingCount
    data modify storage asset:artifact Item.tag.TSB.RemainingCountMax set from storage asset:artifact RemainingCount
    data modify storage asset:artifact Item.tag.TSB.LocalCooldown set from storage asset:artifact LocalCooldown
    data modify storage asset:artifact Item.tag.TSB.TypeCooldown set from storage asset:artifact TypeCooldown
    data modify storage asset:artifact Item.tag.TSB.SecondaryTypeCooldown set from storage asset:artifact SecondaryTypeCooldown
    data modify storage asset:artifact Item.tag.TSB.SpecialCooldown set from storage asset:artifact SpecialCooldown
    data modify storage asset:artifact Item.tag.TSB.Equipment set from storage asset:artifact Equipment
    data modify storage asset:artifact Item.tag.TSB.DisabledFlag set from storage asset:artifact DisabledFlag
    data modify storage asset:artifact Item.tag.TSB.DisabledFlag set from storage asset:artifact DisabledFlag
    data modify storage asset:artifact Item.components."minecraft:item_model" set from storage asset:artifact Model
#    data modify storage asset:artifact Item.components."minecraft:item_name" set from storage asset:artifact Name

# 名前
    # 残り回数が存在する場合
        execute if data storage asset:artifact RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_name/has_remain
    # 残り回数が存在しない場合
        execute unless data storage asset:artifact RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/get_name/
        data modify storage asset:artifact Item.components."minecraft:item_name" set from block 10000 0 10000 Items[0].components."minecraft:custom_name"
        data modify storage asset:hoge Item.components."minecraft:item_name" set from block 10000 0 10000 Items[0].components."minecraft:custom_name"

# Lore
    function asset_manager:artifact/create/set_lore/
# カスタムNBT
    execute unless data storage asset:artifact CustomNBT.attribute_modifiers run data modify storage asset:artifact CustomNBT.attribute_modifiers set value []
    data modify storage asset:artifact CustomNBT.Unbreakable set value 1b
    function asset_manager:artifact/create/set_hide_flags
    data modify storage asset:artifact Item.components merge from storage asset:artifact CustomNBT

# データの適用
    item replace block 10000 0 10000 container.0 with stone
    data modify block 10000 0 10000 Items[0] set from storage asset:artifact Item

# リセット
    data remove storage asset:artifact BaseItem
    data remove storage asset:artifact RemainingCountMax
