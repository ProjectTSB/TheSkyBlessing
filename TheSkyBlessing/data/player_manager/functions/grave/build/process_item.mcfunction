#> player_manager:grave/build/process_item
# @within function player_manager:grave/build/

# Slotを削除
    data remove storage player_manager:grave Temp[].Slot
# 消滅の呪い付きアイテムを削除する
    data remove storage player_manager:grave Temp[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
# SoulBound 付きのアイテムを削除する (手元に残すので)
    data remove storage player_manager:grave Temp[{tag:{TSB:{SoulBound:true}}}]
