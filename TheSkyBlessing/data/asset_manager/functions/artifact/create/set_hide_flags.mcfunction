#> asset_manager:artifact/create/set_hide_flags
#
# HideFlagsを設定
#
# @within function asset_manager:artifact/create/set_data

#> Private
# @private
    #declare score_holder $Temp1
    #declare score_holder $Temp2

# HideFlagsの値を取得
    execute store result score $Temp1 Temporary run data get storage asset:artifact CustomNBT.HideFlags

# 2^29乗を掛けてオーバーフロー式bit反転をする
    scoreboard players operation $Temp1 Temporary *= $536870912 Const

# bit反転後、0以上なら4足す
    execute if score $Temp1 Temporary matches 0.. store result score $Temp2 Temporary run data get storage asset:artifact CustomNBT.HideFlags
    execute if score $Temp1 Temporary matches 0.. run scoreboard players add $Temp2 Temporary 4

# 0以上ならデータを戻す
    execute if score $Temp1 Temporary matches 0.. store result storage asset:artifact CustomNBT.HideFlags int 1 run scoreboard players get $Temp2 Temporary

# リセット
    scoreboard players reset $Temp1 Temporary
    scoreboard players reset $Temp2 Temporary
