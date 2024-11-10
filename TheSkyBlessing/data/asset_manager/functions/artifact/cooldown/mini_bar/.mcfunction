#> asset_manager:artifact/cooldown/mini_bar/
#
#
#
# @within function asset_manager:artifact/cooldown/

# 各スロットのCDを表示用に正規化する LCDs(normal) -> asset:artifact NormalizedLCDs(inverted)
    function asset_manager:artifact/cooldown/mini_bar/normalize_lcds

# 各スロットのCD表示を構築
    data modify storage asset:artifact MiniBars.Offhand set from storage asset:artifact NormalizedLCDs[13]
    data modify storage asset:artifact MiniBars.Feet set from storage asset:artifact NormalizedLCDs[12]
    data modify storage asset:artifact MiniBars.Legs set from storage asset:artifact NormalizedLCDs[11]
    data modify storage asset:artifact MiniBars.Chest set from storage asset:artifact NormalizedLCDs[10]
    data modify storage asset:artifact MiniBars.Head set from storage asset:artifact NormalizedLCDs[9]
    data modify storage asset:artifact MiniBars.Hotbar0 set from storage asset:artifact NormalizedLCDs[8]
    data modify storage asset:artifact MiniBars.Hotbar1 set from storage asset:artifact NormalizedLCDs[7]
    data modify storage asset:artifact MiniBars.Hotbar2 set from storage asset:artifact NormalizedLCDs[6]
    data modify storage asset:artifact MiniBars.Hotbar3 set from storage asset:artifact NormalizedLCDs[5]
    data modify storage asset:artifact MiniBars.Hotbar4 set from storage asset:artifact NormalizedLCDs[4]
    data modify storage asset:artifact MiniBars.Hotbar5 set from storage asset:artifact NormalizedLCDs[3]
    data modify storage asset:artifact MiniBars.Hotbar6 set from storage asset:artifact NormalizedLCDs[2]
    data modify storage asset:artifact MiniBars.Hotbar7 set from storage asset:artifact NormalizedLCDs[1]
    data modify storage asset:artifact MiniBars.Hotbar8 set from storage asset:artifact NormalizedLCDs[0]
    function asset_manager:artifact/cooldown/mini_bar/construct_message.m with storage asset:artifact MiniBars

# リセット
    data remove storage asset:artifact MiniBars
