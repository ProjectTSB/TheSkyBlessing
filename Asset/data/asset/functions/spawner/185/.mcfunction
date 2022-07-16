#> asset:spawner/185/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:185,Y:110,Z:253}] in overworld positioned 185 110 253 if entity @p[distance=..40] run function asset:spawner/185/register