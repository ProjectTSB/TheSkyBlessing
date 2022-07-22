#> asset:spawner/056/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:179,Y:12,Z:8}] in overworld positioned 179 12 8 if entity @p[distance=..40] run function asset:spawner/056/register