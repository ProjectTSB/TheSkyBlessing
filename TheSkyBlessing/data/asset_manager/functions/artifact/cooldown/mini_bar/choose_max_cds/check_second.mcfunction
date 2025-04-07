#> asset_manager:artifact/cooldown/mini_bar/choose_max_cds/check_second
#
#
#
# @within function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach

# CD -> LCD
    data modify storage asset:artifact LCD set from storage asset:artifact CD
# STCD -> TCD
    data modify storage asset:artifact CooldownType.Type set from storage asset:artifact CopiedEquipmentCooldownTypes[-1][1]
    function asset_manager:artifact/cooldown/common/find_type_cooldown with storage asset:artifact CooldownType

# (LCD, TCD) -> CD
    function asset_manager:artifact/cooldown/common/compare_cooldown
