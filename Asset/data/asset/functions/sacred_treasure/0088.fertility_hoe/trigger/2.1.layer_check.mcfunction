#> asset:sacred_treasure/0088.fertility_hoe/trigger/2.1.layer_check
#
#
#
# @within function asset:sacred_treasure/0088.fertility_hoe/trigger/2.check_condition

    scoreboard players set $LayerCrops Temporary 0
    execute store result score $LayerCrops Temporary run clone ~-4 ~ ~-4 ~4 ~ ~4 ~-4 ~ ~-4 filtered #lib:crops force
    scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
    scoreboard players reset $LayerCrops Temporary