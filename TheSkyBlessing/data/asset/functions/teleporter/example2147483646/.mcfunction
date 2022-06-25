#> asset:teleporter/example2147483646/
#
# スポナーの登録処理
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:20,Y:13,Z:41}] positioned 20 13 41 if entity @p[distance=..40] run function asset:teleporter/example2147483646/register