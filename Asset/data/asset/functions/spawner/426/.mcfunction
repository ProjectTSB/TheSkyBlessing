#> asset:spawner/426/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:22,Y:161,Z:356}] in overworld positioned 22 161 356 if entity @p[distance=..40] run function asset:spawner/426/register