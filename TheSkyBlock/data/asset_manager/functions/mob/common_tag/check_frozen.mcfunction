#> asset_manager:mob/common_tag/check_frozen
#
#
#
# @within function asset_manager:mob/common_tag/

#> Temp
# @private
    #declare score_holder $Frozen

# Frozenを取得
    execute store result score $Frozen Temporary run data get entity @s StrayConversionTime 100
# 300以下なら巨大な数に設定する
    execute if score $Frozen Temporary matches ..300 run data modify entity @s StrayConversionTime set value 100000
# リセット
    scoreboard players reset $Frozen Temporary