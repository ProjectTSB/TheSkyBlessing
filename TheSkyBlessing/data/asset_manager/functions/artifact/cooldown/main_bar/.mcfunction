#> asset_manager:artifact/cooldown/main_bar/
#
#
#
# @within function asset_manager:artifact/cooldown/

# 該当スロットからCooldownの情報を取得する
    execute if data storage api: {SelectedItemSlot:0} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[5]
    execute if data storage api: {SelectedItemSlot:1} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[6]
    execute if data storage api: {SelectedItemSlot:2} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[7]
    execute if data storage api: {SelectedItemSlot:3} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[8]
    execute if data storage api: {SelectedItemSlot:4} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[9]
    execute if data storage api: {SelectedItemSlot:5} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[10]
    execute if data storage api: {SelectedItemSlot:6} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[11]
    execute if data storage api: {SelectedItemSlot:7} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[12]
    execute if data storage api: {SelectedItemSlot:8} run data modify storage asset:artifact TargetLCD set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LocalCoolDown[13]
# 取得
    execute store result score $Value Temporary run data get storage asset:artifact TargetLCD.Value
    execute store result score $Max Temporary run data get storage asset:artifact TargetLCD.Max
# valueが負数(!= -15)なら0にする
    execute if score $Value Temporary matches -14..-1 run scoreboard players set $Value Temporary 0
# 0~100の範囲にする
    scoreboard players operation $Value Temporary *= $-100 Const
    scoreboard players operation $Value Temporary /= $Max Temporary
    scoreboard players operation $Value Temporary *= $-1 Const
# $LeftBarを求める
    scoreboard players operation $LeftBar Temporary = $100 Const
    scoreboard players operation $LeftBar Temporary -= $Value Temporary
# if (Maxが0では無い && valueが負数で無い) ならば表示バーを構築する // ここで負数であるのは-15の場合のみ。
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 1.. run data modify storage asset:artifact MainBarMessage append value '{"text":"","color":"#00D3FF"}'
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0 run data modify storage asset:artifact MainBarMessage append value '{"text":"","color":"#64FF00"}'
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0.. if score $LeftBar Temporary matches 1.. run function asset_manager:artifact/cooldown/main_bar/append_bar_left
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0.. if score $Value Temporary matches 1.. run function asset_manager:artifact/cooldown/main_bar/append_bar_right
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0.. run data modify storage asset:artifact MainBarMessage append value '{"text":"-]","color":"white"}'
# else
    execute unless data storage asset:artifact MainBarMessage[0] run data modify storage asset:artifact MainBarMessage set value ['{"text":"#"}']
# リセット
    scoreboard players reset $LeftBar Temporary
    data remove storage asset:artifact TargetLCD