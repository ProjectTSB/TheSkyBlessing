#> asset:spawner/159/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:428,Y:141,Z:60}] in overworld positioned 428 141 60 if entity @p[distance=..40] run function asset:spawner/159/register