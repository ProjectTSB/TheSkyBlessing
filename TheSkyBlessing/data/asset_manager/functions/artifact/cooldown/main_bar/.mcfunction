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
# ゼロパディングの代わりに+1000してstorageに保存
    scoreboard players operation $Unicode Temporary = $Value Temporary
    scoreboard players add $Unicode Temporary 1000
    execute store result storage asset:artifact MainBarUnicode.Value int 1 run scoreboard players get $Unicode Temporary
# if (Maxが0では無い && Valueが負数で無い) ならば表示バーを構築する // ここで負数であるのは-15の場合のみ。
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 1.. run data modify storage asset:artifact MainBarMessage append value '{"text":"","color":"#00D3FF"}'
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0 run data modify storage asset:artifact MainBarMessage append value '{"text":"","color":"#74E72A"}'
    execute unless score $Max Temporary matches 0 if score $Value Temporary matches 0.. run function asset_manager:artifact/cooldown/main_bar/append_bar.m with storage asset:artifact MainBarUnicode
# else
    execute unless data storage asset:artifact MainBarMessage[0] run data modify storage asset:artifact MainBarMessage set value ['{"text":"\\u1000","color":"#74E72A"}']
    # execute unless data storage asset:artifact MainBarMessage[0] run data modify storage asset:artifact MainBarMessage set value ['{"text":"\\u1101"}']
# リセット
    scoreboard players reset $Unicode Temporary
    data remove storage asset:artifact TargetLCD
