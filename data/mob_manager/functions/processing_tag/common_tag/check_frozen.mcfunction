#> mob_manager:processing_tag/common_tag/check_frozen
#
# StrayConversionTimeNBTの数値を巨大にしてストレイ化を延長させます
#
# @within function mob_manager:processing_tag/common_tag/

#> Temp
# @private
    #declare score_holder $Frozen

# Frozenを取得
    execute store result score $Frozen Temporary run data get entity @s StrayConversionTime 100
# 300以下なら巨大な数に設定する
    execute if score $Frozen Temporary matches 1..300 run data modify entity @s StrayConversionTime set value 100000
# リセット
    scoreboard players reset $Frozen Temporary
