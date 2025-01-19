#> asset_manager:artifact/cooldown/main_bar/
#
#
#
# @within function asset_manager:artifact/cooldown/

# 手に持っている神器のクールダウンを取得したいのでプレイヤーの SelectedItemSlot を取得する
    function api:data_get/selected_item_slot

# 該当のローカルクールダウンを取得する
    execute if data storage api: {SelectedItemSlot:0} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[5]
    execute if data storage api: {SelectedItemSlot:1} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[6]
    execute if data storage api: {SelectedItemSlot:2} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[7]
    execute if data storage api: {SelectedItemSlot:3} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[8]
    execute if data storage api: {SelectedItemSlot:4} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[9]
    execute if data storage api: {SelectedItemSlot:5} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[10]
    execute if data storage api: {SelectedItemSlot:6} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[11]
    execute if data storage api: {SelectedItemSlot:7} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[12]
    execute if data storage api: {SelectedItemSlot:8} run data modify storage asset:artifact LCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCooldown[13]

# 該当の種別クールダウンを取得する
    execute if data storage api: {SelectedItemSlot:0} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[5]
    execute if data storage api: {SelectedItemSlot:1} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[6]
    execute if data storage api: {SelectedItemSlot:2} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[7]
    execute if data storage api: {SelectedItemSlot:3} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[8]
    execute if data storage api: {SelectedItemSlot:4} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[9]
    execute if data storage api: {SelectedItemSlot:5} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[10]
    execute if data storage api: {SelectedItemSlot:6} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[11]
    execute if data storage api: {SelectedItemSlot:7} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[12]
    execute if data storage api: {SelectedItemSlot:8} run data modify storage asset:artifact CooldownType.Type set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EquipmentCooldownTypes[13]
    function asset_manager:artifact/cooldown/common/find_type_cooldown with storage asset:artifact CooldownType
    function asset_manager:artifact/cooldown/common/compare_cooldown

# 取得
    execute store result score $Value Temporary run data get storage asset:artifact CD.Value
    execute store result score $Max Temporary run data get storage asset:artifact CD.Max

# value が負数かつ -15 でなければ 0 にする
    execute if score $Value Temporary matches -14..-1 run scoreboard players set $Value Temporary 0
# 0~100 の範囲にする
    scoreboard players operation $Value Temporary *= $-100 Const
    scoreboard players operation $Value Temporary /= $Max Temporary
    scoreboard players operation $Value Temporary *= $-1 Const
# ゼロパディングの代わりに +1000 して storage に保存
    scoreboard players operation $NormalizedValue Temporary = $Value Temporary
    scoreboard players add $NormalizedValue Temporary 1000
    execute store result storage asset:artifact MainBar.Value int 1 run scoreboard players get $NormalizedValue Temporary

# if (Max が 0 では無い && Value が負数で無い) ならば表示バーを構築する // ここで負数であるのは -15 の場合のみ。
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 1.. run data modify storage asset:artifact MainBar.Color set value "#00D3FF"
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0 run data modify storage asset:artifact MainBar.Color set value "#74E72A"
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0.. run function asset_manager:artifact/cooldown/main_bar/construct_message.m with storage asset:artifact MainBar

# リセット
    data remove storage asset:artifact CooldownType
    data remove storage asset:artifact CD
    data remove storage asset:artifact LCD
    data remove storage asset:artifact TCD
    data remove storage asset:artifact MainBar
    scoreboard players reset $NormalizedValue Temporary
