#> asset:spawner/218/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-93,Y:72,Z:244}] in overworld positioned -93 72 244 if entity @p[distance=..40] run function asset:spawner/218/register