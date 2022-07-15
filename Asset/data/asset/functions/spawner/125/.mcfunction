#> asset:spawner/125/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:426,Y:87,Z:68}] in overworld positioned 426 87 68 if entity @p[distance=..40] run function asset:spawner/125/register