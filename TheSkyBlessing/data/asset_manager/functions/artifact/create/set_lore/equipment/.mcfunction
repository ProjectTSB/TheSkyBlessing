#> asset_manager:artifact/create/equipment/
#
# 装備セットによる効果を設定する
#
# @within function asset_manager:artifact/create/set_lore

# IDから当該Effectを呼び出す
    function asset_manager:common/context/id/stash
    data modify storage asset:context id set from storage asset:artifact Equipment.SetEffectID
    function #asset:effect/register
    function asset_manager:common/context/id/pop

# 空行セパレータ
    data modify storage asset:artifact Item.tag.display.Lore append value '""'
# 名前をLoreに組み込む
    data modify storage asset:artifact EquipName set from storage asset:effect Name
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/equipment
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[0]
# 説明文をLoreに組み込む
    execute if data storage asset:effect Description[0] run function asset_manager:artifact/create/set_lore/equipment/description

# リセット
    data remove storage asset:artifact EquipName
    data remove storage asset:effect ID
    data remove storage asset:effect Extends
    data remove storage asset:effect Name
    data remove storage asset:effect Description
    data remove storage asset:effect Duration
    data remove storage asset:effect Stack
    data remove storage asset:effect DurationOperation
    data remove storage asset:effect StackOperation
    data remove storage asset:effect MaxDuration
    data remove storage asset:effect MaxStack
    data remove storage asset:effect IsBadEffect
    data remove storage asset:effect ProcessOnDied
    data remove storage asset:effect RequireClearLv
    data remove storage asset:effect Visible
    data remove storage asset:effect StackVisible
    data remove storage asset:effect Field
