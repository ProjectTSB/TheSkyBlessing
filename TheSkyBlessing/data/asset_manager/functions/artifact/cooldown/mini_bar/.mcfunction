#> asset_manager:artifact/cooldown/mini_bar/
#
#
#
# @within function asset_manager:artifact/cooldown/

# 各スロットについて、ローカルクールダウンと種別クールダウンのうちクールダウンが長いものを取得する
# LCDs(normal) + TCDs(normal) -> CDs(inverted)
    function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/
# 各スロットのCDを表示用に正規化する CDs(inverted) -> asset:artifact NormalizedCDs(normal)
    function asset_manager:artifact/cooldown/mini_bar/normalize_cds

# 各スロットのCD表示を構築
    data modify storage asset:artifact MiniBars.Offhand set from storage asset:artifact NormalizedCDs[0]
    data modify storage asset:artifact MiniBars.Feet set from storage asset:artifact NormalizedCDs[1]
    data modify storage asset:artifact MiniBars.Legs set from storage asset:artifact NormalizedCDs[2]
    data modify storage asset:artifact MiniBars.Chest set from storage asset:artifact NormalizedCDs[3]
    data modify storage asset:artifact MiniBars.Head set from storage asset:artifact NormalizedCDs[4]
    data modify storage asset:artifact MiniBars.Hotbar0 set from storage asset:artifact NormalizedCDs[5]
    data modify storage asset:artifact MiniBars.Hotbar1 set from storage asset:artifact NormalizedCDs[6]
    data modify storage asset:artifact MiniBars.Hotbar2 set from storage asset:artifact NormalizedCDs[7]
    data modify storage asset:artifact MiniBars.Hotbar3 set from storage asset:artifact NormalizedCDs[8]
    data modify storage asset:artifact MiniBars.Hotbar4 set from storage asset:artifact NormalizedCDs[9]
    data modify storage asset:artifact MiniBars.Hotbar5 set from storage asset:artifact NormalizedCDs[10]
    data modify storage asset:artifact MiniBars.Hotbar6 set from storage asset:artifact NormalizedCDs[11]
    data modify storage asset:artifact MiniBars.Hotbar7 set from storage asset:artifact NormalizedCDs[12]
    data modify storage asset:artifact MiniBars.Hotbar8 set from storage asset:artifact NormalizedCDs[13]
    function asset_manager:artifact/cooldown/mini_bar/construct_message.m with storage asset:artifact MiniBars

# リセット
    data remove storage asset:artifact NormalizedCDs
    data remove storage asset:artifact MiniBars
    data remove storage asset:artifact CDs
