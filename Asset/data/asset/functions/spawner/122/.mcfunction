#> asset:spawner/122/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:419,Y:74,Z:25}] in overworld positioned 419 74 25 if entity @p[distance=..40] run function asset:spawner/122/register