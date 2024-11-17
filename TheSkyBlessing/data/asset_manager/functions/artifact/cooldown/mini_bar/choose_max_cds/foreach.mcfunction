#> asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach
#
#
#
# @within function
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach

# () -> LCD
    data modify storage asset:artifact LCD set from storage asset:artifact LCDs[-1]
# () -> TCD
    data modify storage asset:artifact CooldownType.Type set from storage asset:artifact CopiedEquipmentCooldownTypes[-1]
    function asset_manager:artifact/cooldown/common/find_type_cooldown with storage asset:artifact CooldownType

# LCD と TCD のうちクールダウン最大値が大きい方を CDs に入れる
    function asset_manager:artifact/cooldown/common/compare_cooldown
    data modify storage asset:artifact CDs append from storage asset:artifact CD

# 末尾削除
    data remove storage asset:artifact CopiedEquipmentCooldownTypes[-1]
    data remove storage asset:artifact LCDs[-1]
# リセット
    data remove storage asset:artifact CooldownType
    data remove storage asset:artifact CD
    data remove storage asset:artifact LCD
    data remove storage asset:artifact TCD
# 要素がまだあるなら再帰
    execute if data storage asset:artifact LCDs[0] run function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach
