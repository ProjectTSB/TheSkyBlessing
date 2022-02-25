#> asset_manager:sacred_treasure/cooldown/foreach/construct_msgs_and_revert_lcds
#
#
#
# @within function
#   asset_manager:sacred_treasure/cooldown/
#   asset_manager:sacred_treasure/cooldown/foreach/construct_msgs_and_revert_lcds

#> For Calc
# @private
    #declare score_holder $Value
    #declare score_holder $NormalizedValue
    #declare score_holder $Max

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
    data modify storage asset:sacred_treasure LCDs append from storage asset:sacred_treasure DecrementedLCDs[-1]
# 表示する値を算出する
    # 取得
        execute store result score $Value Temporary run data get storage asset:sacred_treasure LCDs[-1].Value
        execute store result score $Max Temporary run data get storage asset:sacred_treasure LCDs[-1].Max
    # 0除算回避の為に0なら1にする
        execute if score $Max Temporary matches 0 run scoreboard players set $Max Temporary 1
    # $Valueを移す
        scoreboard players operation $NormalizedValue Temporary = $Value Temporary
    # valueが負数(!= -15)なら0にする
        execute if score $NormalizedValue Temporary matches -14..-1 run scoreboard players set $NormalizedValue Temporary 0
    # 0~8の範囲に切り上げで補正する
        scoreboard players operation $NormalizedValue Temporary *= $-8 Const
        scoreboard players operation $NormalizedValue Temporary /= $Max Temporary
        scoreboard players operation $NormalizedValue Temporary *= $-1 Const
    # LCDMessagesに追加
        execute if score $Value Temporary matches -15 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"9","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 8 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"8","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 7 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"7","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 6 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"6","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 5 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"5","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 4 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"4","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 3 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"3","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 2 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"2","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 1 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"1","color":"white"}'
        execute unless score $Value Temporary matches -15 if score $NormalizedValue Temporary matches 0 run data modify storage asset:sacred_treasure LCDMessages append value '{"text":"0","color":"white"}'
# 末尾削除
    data remove storage asset:sacred_treasure DecrementedLCDs[-1]
# リセット
    scoreboard players reset $Value Temporary
    scoreboard players reset $NormalizedValue Temporary
    scoreboard players reset $Max Temporary
# 要素があれば再帰
    execute if data storage asset:sacred_treasure DecrementedLCDs[0] run function asset_manager:sacred_treasure/cooldown/foreach/construct_msgs_and_revert_lcds