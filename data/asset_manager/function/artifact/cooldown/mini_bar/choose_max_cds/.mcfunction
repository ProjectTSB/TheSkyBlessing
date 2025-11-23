#> asset_manager:artifact/cooldown/mini_bar/choose_max_cds/
#
#
#
# @within function asset_manager:artifact/cooldown/mini_bar/

# コピーしておく
    data modify storage asset:artifact CopiedEquipmentCooldownTypes set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes

# CopiedEquipmentCooldownTypes(normal) + LCDs(normal) -> CDs(inverted)
    function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach

# リセット
    data remove storage asset:artifact CopiedEquipmentCooldownTypes
