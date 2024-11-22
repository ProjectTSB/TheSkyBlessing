#> asset_manager:teleporter/tick/vfx/star/blink/1.m
#
#
#
# @within function asset_manager:teleporter/tick/vfx/star/

#> Private
# @private
    #declare score_holder $R
    #declare score_holder $G
    #declare score_holder $B
    #declare score_holder $Color

# EntityStorage 呼び出し
    function oh_my_dat:please

# 色情報取得
    $execute store result score $R Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart[0] $(Percentage)
    $execute store result score $G Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart[1] $(Percentage)
    $execute store result score $B Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.ColorPart[2] $(Percentage)
# カラーコード(10) を計算する
    scoreboard players operation $Color Temporary = $R Temporary
    scoreboard players operation $Color Temporary *= $256 Const
    scoreboard players operation $Color Temporary += $G Temporary
    scoreboard players operation $Color Temporary *= $256 Const
    scoreboard players operation $Color Temporary += $B Temporary
# display に適用
    execute store result entity @s item.tag.display.color int 1 run scoreboard players get $Color Temporary

# リセット
    scoreboard players reset $R Temporary
    scoreboard players reset $G Temporary
    scoreboard players reset $B Temporary
    scoreboard players reset $Color Temporary
