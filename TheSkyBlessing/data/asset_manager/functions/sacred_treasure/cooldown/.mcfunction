#> asset_manager:sacred_treasure/cooldown/
#
#
#
# @within function asset_manager:sacred_treasure/tick/player

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
    data modify storage asset:sacred_treasure LCDs set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown
# 各スロットのCDをデクリメントする LCDs(normal) -> DecrementedLCDs(inverted)
    function asset_manager:sacred_treasure/cooldown/foreach/decrement
# 各スロットの表示データ構築 + DecrementedLCDs(inverted) -> ( LCDs(normal), LCDMessages(normal) )
    function asset_manager:sacred_treasure/cooldown/foreach/construct_msgs_and_revert_lcds
# プレイヤーの現在スロット
    function api:data_get/selected_item_slot
# メインハンドを設定する
    function asset_manager:sacred_treasure/cooldown/main_bar/
# メインハンドのスロットのホットバー側をマスクする
    execute if data storage api: {SelectedItemSlot:0} run data modify storage asset:sacred_treasure LCDMessages[5] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:1} run data modify storage asset:sacred_treasure LCDMessages[6] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:2} run data modify storage asset:sacred_treasure LCDMessages[7] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:3} run data modify storage asset:sacred_treasure LCDMessages[8] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:4} run data modify storage asset:sacred_treasure LCDMessages[9] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:5} run data modify storage asset:sacred_treasure LCDMessages[10] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:6} run data modify storage asset:sacred_treasure LCDMessages[11] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:7} run data modify storage asset:sacred_treasure LCDMessages[12] set value '{"text":"ε","color":"white"}'
    execute if data storage api: {SelectedItemSlot:8} run data modify storage asset:sacred_treasure LCDMessages[13] set value '{"text":"ε","color":"white"}'
# 出力
    title @s actionbar [{"text":">","font":"cooldown/main_bar"},{"storage":"asset:sacred_treasure","nbt":"MainBarMessage[]","separator":"","interpret":true},{"text":"~"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[0]","interpret":true,"font":"cooldown/mini_bar/offhand"},{"text":"<"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[1]","interpret":true,"font":"cooldown/mini_bar/feet"},{"text":"*"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[2]","interpret":true,"font":"cooldown/mini_bar/legs"},{"text":"*"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[3]","interpret":true,"font":"cooldown/mini_bar/chest"},{"text":"*"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[4]","interpret":true,"font":"cooldown/mini_bar/head"},{"text":">"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[5]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[6]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[7]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[8]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[9]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[10]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[11]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[12]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[13]","interpret":true,"font":"cooldown/mini_bar/"},{"storage":"asset:sacred_treasure","nbt":"LCDMessages[14]","interpret":true,"font":"cooldown/mini_bar/"}]
# 元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown set from storage asset:sacred_treasure LCDs
# リセット
    data remove storage asset:sacred_treasure LCDs
    data remove storage asset:sacred_treasure DecrementedCLDs
    data remove storage asset:sacred_treasure MainBarMessage
    data remove storage asset:sacred_treasure LCDMessages