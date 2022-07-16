#> asset:spawner/076/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:225,Y:62,Z:62}] in overworld positioned 225 62 62 if entity @p[distance=..40] run function asset:spawner/076/register