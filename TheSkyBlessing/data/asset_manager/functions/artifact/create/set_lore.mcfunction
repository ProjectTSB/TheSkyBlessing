#> asset_manager:artifact/create/set_lore
#
# Loreを構成します
#
# @within function asset_manager:artifact/create/set_data

# 初期化
    data modify block 10000 0 10000 Items set value []
# 通常説明文
    execute if data storage asset:artifact Lore[0] run function asset_manager:artifact/create/vanilla_lore
# 装備時効果
    data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Modifiers
    execute if data storage asset:artifact CopiedModifiers[0] if data storage asset:artifact Item.tag.display.Lore[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
    execute if data storage asset:artifact CopiedModifiers[0] run function asset_manager:artifact/create/modifier/
    data remove storage asset:artifact CopiedModifiers
# セット効果
    execute if data storage asset:artifact EquipID run function asset_manager:artifact/create/equipment/
# スキル設定
    execute if data storage asset:artifact Trigger run function asset_manager:artifact/create/trigger/
# 使える神
    function asset_manager:artifact/create/set_god
