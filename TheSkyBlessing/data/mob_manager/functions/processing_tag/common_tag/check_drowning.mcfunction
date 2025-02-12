#> mob_manager:processing_tag/common_tag/check_drowning
#
# InWaterTimeNBTを検知して、ドラウンド化しないようにします
#
# @within function mob_manager:processing_tag/common_tag/

#> Temp
# @private
    #declare score_holder $InWaterTime


# InWaterTimeを取得
    execute store result score $InWaterTime Temporary run data get entity @s InWaterTime 100
# InWaterTimeが1以上なら値をマイナスにして溺れないように
    execute if score $InWaterTime Temporary matches 1.. run data modify entity @s InWaterTime set value -999999
# リセット
    scoreboard players reset $InWaterTime Temporary
