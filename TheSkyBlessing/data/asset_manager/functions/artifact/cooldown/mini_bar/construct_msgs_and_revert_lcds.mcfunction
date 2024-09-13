#> asset_manager:artifact/cooldown/mini_bar/construct_msgs_and_revert_lcds
#
#
#
# @within function
#   asset_manager:artifact/cooldown/
#   asset_manager:artifact/cooldown/mini_bar/construct_msgs_and_revert_lcds

# a 16/16
# b 15/16
# c 14/16
# d 13/16
# e 12/16
# f 11/16
# g 10/16
# h  9/16
# i  8/16
# j  7/16
# k  6/16
# l  5/16
# m  4/16
# n  3/16
# o  2/16
# p  1/16
# q  0/16
# ε  null

# LCDにそのまま戻す
    data modify storage asset:artifact LCDs append from storage asset:artifact DecrementedLCDs[-1]
# 表示する値を算出する
    # 取得
        execute store result score $Value Temporary run data get storage asset:artifact LCDs[-1].Value
        execute store result score $Max Temporary run data get storage asset:artifact LCDs[-1].Max
    # 0除算回避の為に0なら1にする
        execute if score $Max Temporary matches 0 run scoreboard players set $Max Temporary 1
    # $Valueを移す
        scoreboard players operation $NormalizedValue Temporary = $Value Temporary
    # valueが負数(!= -15)なら0にする
        execute if score $NormalizedValue Temporary matches -14..-1 run scoreboard players set $NormalizedValue Temporary 0
    # 0~16の範囲に切り上げで補正する
        scoreboard players operation $NormalizedValue Temporary *= $-16 Const
        scoreboard players operation $NormalizedValue Temporary /= $Max Temporary
        scoreboard players operation $NormalizedValue Temporary *= $-1 Const
    # LCDMessagesに追加
        # execute if score $Value Temporary matches -15 run data modify storage asset:artifact LCDMessages append value '{"text":"ε","color":"white"}'
        execute if score $Value Temporary matches -15 run data modify storage asset:artifact LCDMessages append value '{"text":"a","color":"white"}'
        execute unless score $Value Temporary matches -15 run function asset_manager:artifact/cooldown/mini_bar/store_lcd_bar
# 末尾削除
    data remove storage asset:artifact DecrementedLCDs[-1]
# 要素があれば再帰
    execute if data storage asset:artifact DecrementedLCDs[0] run function asset_manager:artifact/cooldown/mini_bar/construct_msgs_and_revert_lcds
