#> asset:spawner/062/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:134,Y:16,Z:43}] in overworld positioned 134 16 43 if entity @p[distance=..40] run function asset:spawner/062/register