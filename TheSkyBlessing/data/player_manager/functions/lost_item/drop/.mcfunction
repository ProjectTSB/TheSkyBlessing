#> player_manager:lost_item/drop/
#
# プレイヤーのアイテムをバニラっぽくばら撒く
#
# @within function core:handler/death

# 消そうね
    clear @s


# セッション開ける
    function lib:array/session/open

# 下ごしらえ
    data modify storage lib: Array set from storage api: Inventory
    data remove storage lib: Array[].Slot
    data remove storage player_manager:lost_item Temp[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]

# 一回目
    function lib:array/packing_chest
    data modify block 10000 0 10000 Items set from storage lib: Package
    loot spawn ~ ~1 ~ mine 10000 0 10000 debug_stick

# リセット
    data remove storage lib: Package

# 二回目
    function lib:array/packing_chest
    data modify block 10000 0 10000 Items set from storage lib: Package
    loot spawn ~ ~1 ~ mine 10000 0 10000 debug_stick

# ベクトル大きくする
    execute positioned ~ ~1 ~ as @e[type=item,distance=..0.5] run function player_manager:lost_item/drop/motion_multiple


# リセット
    function lib:array/session/close