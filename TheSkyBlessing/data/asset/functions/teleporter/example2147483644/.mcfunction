#> asset:teleporter/example2147483644/
#
# スポナーの登録処理
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:8,Y:27,Z:20}] positioned 8 27 20 if entity @p[distance=..40] run function asset:teleporter/example2147483644/register