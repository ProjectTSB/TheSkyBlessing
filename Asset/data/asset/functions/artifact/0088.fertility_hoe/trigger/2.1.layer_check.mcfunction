#> asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
#
#
#
# @within function asset:artifact/0088.fertility_hoe/trigger/2.check_condition

    scoreboard players set $LayerCrops Temporary 0
    execute store result score $LayerCrops Temporary run clone ~-4 ~ ~-4 ~4 ~ ~4 ~-4 ~ ~-4 filtered #asset:artifact/0088.fertility_hoe/grow_target force
    scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
    scoreboard players reset $LayerCrops Temporary