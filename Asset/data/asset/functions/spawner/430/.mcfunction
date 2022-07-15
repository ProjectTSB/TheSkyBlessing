#> asset:spawner/430/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:53,Y:156,Z:471}] in overworld positioned 53 156 471 if entity @p[distance=..40] run function asset:spawner/430/register