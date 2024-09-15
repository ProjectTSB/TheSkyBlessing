#> asset_manager:artifact/cooldown/
#
#
#
# @within function asset_manager:artifact/tick/player

#! LocalCoolDown
#  0. offhand
#  1. feet
#  2. legs
#  3. chest
#  4. head
#  5. hotbar 0
#  6. hotbar 1
#  7. hotbar 2
#  8. hotbar 3
#  9. hotbar 4
# 10. hotbar 5
# 11. hotbar 6
# 12. hotbar 7
# 13. hotbar 8

# EntityStorage呼び出し
    function oh_my_dat:please
# 長いので一度コピーしましょう
    data modify storage asset:artifact LCDs set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown
# 各スロットのCDをデクリメントする LCDs(normal) -> DecrementedLCDs(inverted)
    function asset_manager:artifact/cooldown/mini_bar/foreach_decrement
# 各スロットのCDを表示用に正規化 + DecrementedLCDs(inverted) -> ( LCDs(normal), NormalizedLCDs(normal) )
    function asset_manager:artifact/cooldown/mini_bar/normalize_and_revert_lcds
# 各スロットのCD表示を構築
    data modify storage asset:artifact MiniBars.Offhand set from storage asset:artifact NormalizedLCDs[0]
    data modify storage asset:artifact MiniBars.Feet set from storage asset:artifact NormalizedLCDs[1]
    data modify storage asset:artifact MiniBars.Legs set from storage asset:artifact NormalizedLCDs[2]
    data modify storage asset:artifact MiniBars.Chest set from storage asset:artifact NormalizedLCDs[3]
    data modify storage asset:artifact MiniBars.Head set from storage asset:artifact NormalizedLCDs[4]
    data modify storage asset:artifact MiniBars.Hotbar0 set from storage asset:artifact NormalizedLCDs[5]
    data modify storage asset:artifact MiniBars.Hotbar1 set from storage asset:artifact NormalizedLCDs[6]
    data modify storage asset:artifact MiniBars.Hotbar2 set from storage asset:artifact NormalizedLCDs[7]
    data modify storage asset:artifact MiniBars.Hotbar3 set from storage asset:artifact NormalizedLCDs[8]
    data modify storage asset:artifact MiniBars.Hotbar4 set from storage asset:artifact NormalizedLCDs[9]
    data modify storage asset:artifact MiniBars.Hotbar5 set from storage asset:artifact NormalizedLCDs[10]
    data modify storage asset:artifact MiniBars.Hotbar6 set from storage asset:artifact NormalizedLCDs[11]
    data modify storage asset:artifact MiniBars.Hotbar7 set from storage asset:artifact NormalizedLCDs[12]
    data modify storage asset:artifact MiniBars.Hotbar8 set from storage asset:artifact NormalizedLCDs[13]
    function asset_manager:artifact/cooldown/mini_bar/construct_message.m with storage asset:artifact MiniBars
# プレイヤーの現在スロット
    function api:data_get/selected_item_slot
# メインハンドを設定する
    function asset_manager:artifact/cooldown/main_bar/
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown set from storage asset:artifact LCDs
# リセット
    scoreboard players reset $Value Temporary
    scoreboard players reset $NormalizedValue Temporary
    scoreboard players reset $Max Temporary
    data remove storage asset:artifact LCDs
    data remove storage asset:artifact DecrementedLCDs
    data remove storage asset:artifact MainBar
    data remove storage asset:artifact NormalizedLCDs
    data remove storage asset:artifact MiniBars
