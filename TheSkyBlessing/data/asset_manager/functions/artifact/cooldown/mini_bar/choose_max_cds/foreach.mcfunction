#> asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach
#
#
#
# @within function
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach

# () -> TCD
    data modify storage asset:artifact CooldownType.Type set from storage asset:artifact CopiedEquipmentCooldownTypes[-1]
    function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/get_tcd with storage asset:artifact CooldownType

# TCD が存在する場合、LCD と TCD のうちクールダウン最大値が大きい方を CDs に入れる
    execute if data storage asset:artifact TCD run function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/push_compare_result
# TCD が null の場合、問答無用で LCD を入れる
    execute unless data storage asset:artifact TCD run data modify storage asset:artifact CDs append from storage asset:artifact LCDs[-1]

# 末尾削除
    data remove storage asset:artifact CopiedEquipmentCooldownTypes[-1]
    data remove storage asset:artifact LCDs[-1]
# リセット
    data remove storage asset:artifact CooldownType
    data remove storage asset:artifact TCD
# 要素がまだあるなら再帰
    execute if data storage asset:artifact LCDs[0] run function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach
