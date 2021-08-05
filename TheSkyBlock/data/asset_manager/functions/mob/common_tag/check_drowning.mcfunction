#> asset_manager:mob/common_tag/check_drowning
#
#
#
# @within function asset_manager:mob/common_tag/
#

#> Temp
# @private
    #declare score_holder $InWaterTime


# InWaterTimeを取得
    execute store result score $InWaterTime Temporary run data get entity @s InWaterTime 100
# 1以上なら負数に設定する
    execute if score $InWaterTime Temporary matches 1.. run data modify entity @s InWaterTime set value -999999
# リセット
    scoreboard players reset $InWaterTime Temporary