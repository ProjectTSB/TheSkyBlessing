#> asset_manager:teleporter/register/calculate_and_insert_color_data
#
#
#
# @within function asset_manager:teleporter/register/

#> Private
# @private
    #declare score_holder $R
    #declare score_holder $G
    #declare score_holder $B
    #declare score_holder $Color

execute store result score $R Temporary run data get storage asset:teleporter Color[0] 1
execute store result score $G Temporary run data get storage asset:teleporter Color[1] 1
execute store result score $B Temporary run data get storage asset:teleporter Color[2] 1

scoreboard players operation $Color Temporary = $R Temporary
scoreboard players operation $Color Temporary *= $256 Const
scoreboard players operation $Color Temporary += $G Temporary
scoreboard players operation $Color Temporary *= $256 Const
scoreboard players operation $Color Temporary += $B Temporary

execute store result storage asset:teleporter Teleporters[-1].Data.Color int 1 run scoreboard players get $Color Temporary
data modify storage asset:teleporter Teleporters[-1].Data.ColorPart set from storage asset:teleporter Color

scoreboard players reset $R Temporary
scoreboard players reset $G Temporary
scoreboard players reset $B Temporary
scoreboard players reset $Color Temporary
