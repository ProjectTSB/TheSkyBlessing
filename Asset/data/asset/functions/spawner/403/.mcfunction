#> asset:spawner/403/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:388,Y:79,Z:275}] in overworld positioned 388 79 275 if entity @p[distance=..40] run function asset:spawner/403/register