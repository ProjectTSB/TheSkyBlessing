#> asset:spawner/132/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:448,Y:103,Z:115}] in overworld positioned 448 103 115 if entity @p[distance=..40] run function asset:spawner/132/register