#> asset:spawner/113/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:143,Y:8,Z:90}] in overworld positioned 143 8 90 if entity @p[distance=..40] run function asset:spawner/113/register