#> asset:spawner/024/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-99,Y:17,Z:19}] in overworld positioned -99 17 19 if entity @p[distance=..40] run function asset:spawner/024/register