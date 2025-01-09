#> asset_manager:teleporter/register/construct/calculate_and_insert_color_data
#
#
#
# @within function asset_manager:teleporter/register/construct/

#> Private
# @private
    #declare score_holder $R
    #declare score_holder $G
    #declare score_holder $B
    #declare score_holder $Color

# 色情報取得
    execute store result score $R Temporary run data get storage asset:teleporter Color[0] 1
    execute store result score $G Temporary run data get storage asset:teleporter Color[1] 1
    execute store result score $B Temporary run data get storage asset:teleporter Color[2] 1

# カラーコード(10) を計算する
    scoreboard players operation $Color Temporary = $R Temporary
    scoreboard players operation $Color Temporary *= $256 Const
    scoreboard players operation $Color Temporary += $G Temporary
    scoreboard players operation $Color Temporary *= $256 Const
    scoreboard players operation $Color Temporary += $B Temporary

# storage にいれる
    execute store result storage asset:teleporter Teleporters[-1].Data.Color int 1 run scoreboard players get $Color Temporary
    data modify storage asset:teleporter Teleporters[-1].Data.ColorPart set from storage asset:teleporter Color

# リセット
    scoreboard players reset $R Temporary
    scoreboard players reset $G Temporary
    scoreboard players reset $B Temporary
    scoreboard players reset $Color Temporary
