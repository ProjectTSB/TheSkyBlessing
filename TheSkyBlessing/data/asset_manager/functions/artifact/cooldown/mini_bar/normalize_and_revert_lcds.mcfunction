#> asset_manager:artifact/cooldown/mini_bar/normalize_and_revert_lcds
#
#
#
# @within function
#   asset_manager:artifact/cooldown/
#   asset_manager:artifact/cooldown/mini_bar/normalize_and_revert_lcds

#! MiniBar
# \u1000 16/16
# \u1001 15/16
# \u1002 14/16
# \u1003 13/16
# \u1004 12/16
# \u1005 11/16
# \u1006 10/16
# \u1007  9/16
# \u1008  8/16
# \u1009  7/16
# \u1010  6/16
# \u1011  5/16
# \u1012  4/16
# \u1013  3/16
# \u1014  2/16
# \u1015  1/16
# \u1016  0/16
# \u9999  null

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
    # ゼロパディングの代わりに+1000する
        scoreboard players add $NormalizedValue Temporary 1000
    # NormalizedLCDsに追加
        data modify storage asset:artifact NormalizedLCDs append value 9999
        execute unless score $Value Temporary matches -15 store result storage asset:artifact NormalizedLCDs[-1] int 1 run scoreboard players get $NormalizedValue Temporary
# 末尾削除
    data remove storage asset:artifact DecrementedLCDs[-1]
# 要素があれば再帰
    execute if data storage asset:artifact DecrementedLCDs[0] run function asset_manager:artifact/cooldown/mini_bar/normalize_and_revert_lcds
